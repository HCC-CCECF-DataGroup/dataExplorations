# run the report and save html to /docs for pages
makeReport <- function(f){
  # default = html
  rmarkdown::render(input = paste0(here::here(), "/cseImpactData/", f, ".Rmd"),
                    params = list(title = title,
                                  subtitle = subtitle,
                                  authors = authors),
                    output_file = paste0(here::here("docs/"), f, ".html")
  )
  # word
  # need to get flextable sorted first
  # rmarkdown::render(input = paste0(here::here("hesaExplore", f), ".Rmd"),
  #                   params = list(title = title,
  #                                 subtitle = subtitle,
  #                                 authors = authors),
  #                   output_file = paste0(here::here("docs/"), f, ".docx"),
  #                   output_format = "word_document"
  # )
}

# >> run report ----
rmdFile <- "exploreCSE_ImpactData" # not the full path
title = "Exploring CSE Impact Tool data"
subtitle = "Wider Solent region"
authors = "Ben Anderson (b.anderson@soton.ac.uk, `@dataknut`)"

makeReport(rmdFile)
