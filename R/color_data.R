#' Palette data for the kani package
#'
#' Data used by the palettes in the kani package
#'
#' @format A \code{list}.
#' @export
color_data <- {
  # Instantiate list object to store color values.
  kani <- list()
  
  # Add colors
  kani$colors <- c(
    dkgray = rgb(60, 60, 60, max = 255),
    medgray = rgb(210, 210, 210, max = 255),
    ltgray = rgb(240, 240, 240, max = 255),
    bg_text = "#969696",
    light_red = "#f8766d",
    light_blue = "#00bfc4",
    red = "#ff7473",
    blue = "#47b8e0",
    yellow = "#ffc952",
    green = "#7cae00",
    purple = "#c77cff",
    dark = "#34314c"
  )
  
  kani
}