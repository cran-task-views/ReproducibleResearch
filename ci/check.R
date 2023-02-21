#!/usr/bin/env Rscript

library("ctv")
library("rmarkdown")

f <- "ReproducibleResearch.md"

message("=== Reading ctv...")
read.ctv(f)
message("=== Rendering ctv...")
ctv2html(f)
message("=== Checking packages...")
check_ctv_packages(f)

message("=== Checking date...")
today <- Sys.Date()
suppressWarnings(timezone <- Sys.timezone())
message(sprintf("It is %s in the timezone %s", today, timezone))
header <- yaml_front_matter("ReproducibleResearch.md")
version <- as.Date(header[["version"]])
if (version != today) {
  warning(
    sprintf("The version in ctv is %s\n", version),
    "***Don't forget to update the version!***\n",
    immediate. = TRUE
  )
}
