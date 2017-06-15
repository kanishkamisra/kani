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
    green = "#8cd790",
    purple = "#6a60a9",
    orange = "#f68657",
    dark_pink = "#d81159",
    dark_grey = "#6e7783",
    purple_grey = "#8283a7",
    orange_alt = "#f17f42",
    green_alt = "#7cae00",
    purple_alt = "#c77cff",
    dark = "#34314c"
  )
  
  kani
}