#' @include color_data.R
NULL

#' Theme inspired by fivethirtyeight.com plots + my color scheme
#'
#' Theme inspired by the plots on
#' \href{fivethirtyeight.com}{http://fivethirtyeight.com}.
#'
#' @inheritParams ggplot2::theme_grey
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(wt, mpg)) +
#'     geom_point() +
#'     labs(title = "This is a title",
#'          subtitle = "This is a subtitle") +
#'     scale_color_kani() +
#'     theme_kani()
#'}
#'
#' @export
theme_kani <- function (base_size = 12, base_family = "Roboto") {
  (
    # Start with basic, foundational theme then add
    theme_foundation(base_size = base_size, base_family = base_family) +
      theme(
        # elementary object changes like line, rectangles and text
        line = element_line(colour = "black"),
        rect = element_rect(fill = color_data$colors["ltgray"],linetype = 0, colour = NA),
        text = element_text(colour = color_data$colors["dkgray"]),
        
        # Format axis elements
        axis.title = element_text(),
        axis.text = element_text(color = color_data$colors["bg_text"]),
        axis.ticks = element_blank(),
        axis.line = element_blank(),
        
        # format legend elements
        legend.background = element_rect(),
        legend.position = "bottom",
        legend.direction = "horizontal",
        legend.box = "vertical",
        
        # format panel elements
        panel.grid = element_line(colour = NULL),
        panel.grid.major = element_line(colour = color_data$color["medgray"]),
        panel.grid.minor = element_blank(),
        
        # format texual elements of the plot like title, subtitle and change their margin
        plot.title = element_text(hjust = 0, size = rel(2), face = "bold"),
        plot.subtitle = element_text(size = rel(1.4)),
        plot.caption = element_text(size = 15),
        plot.margin = unit(c(1, 1, 1, 1), "lines"),
        
        # format background 
        strip.background = element_rect()
      )
  )
}


kani_pal <- function() {
  function(n) {
    if(n == 2) {
      colors <- color_data$colors[c("light_red","light_blue")] 
    }
    else {
      colors <- color_data$colors[c("red","blue", "yellow", "green", "purple", "dark")] 
    }
    unname(colors[seq_len(n)])
  }
}

scale_colour_kani <- function(type, ...) {
  discrete_scale("colour", "kani", kani_pal(), ...)
}

scale_color_kani <- function(type, ...) {
  discrete_scale("colour", "kani", kani_pal(), ...)
}

scale_fill_kani <- function(type, ...) {
  discrete_scale("fill", "kani", kani_pal(), ...)
}