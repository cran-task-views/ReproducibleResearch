#!/usr/bin/env Rscript

library("ctv")

f <- "ReproducibleResearch.md"

read.ctv(f)
ctv2html(f)
check_ctv_packages(f)
