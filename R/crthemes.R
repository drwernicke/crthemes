library(rmarkdown)

# The function creating the theme
#' @export
cr_main <- function(toc = TRUE, code_folding = "hide", number_sections=TRUE) {

  # get the locations of resource files located within the package
  css <- system.file("rmarkdown", "templates", "cr_main" ,"resources", "style.css", package = "crthemes")
  template <- system.file("rmarkdown", "templates", "cr_main" ,"resources", "template_crthemes.html", package = "crthemes")
  fonts <- system.file("rmarkdown", "templates", "cr_main" ,"resources", "fonts.html", package = "crthemes")

  # call the base html_document function
  rmarkdown::html_document( theme= "lumen",
                            template= template,
                            css= css,
                            toc= toc,
                            toc_float = TRUE,
                            toc_depth = 2,
                            number_sections= number_sections,
                            df_print = "paged",
                            code_folding = code_folding
  )
}
