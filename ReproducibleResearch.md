---
name: ReproducibleResearch
topic: Reproducible Research
maintainer: John Blischak, Alison Hill, Ben Marwick, Daniel Sjoberg, Will Landau
email: jdblischak@gmail.com
version: 2025-08-21
source: https://github.com/cran-task-views/ReproducibleResearch/
---

The goal of reproducible research is to tie specific instructions to
data analysis and experimental data so that scholarship can be
recreated, understood, and verified. Packages in R for this
purpose can be roughly split into groups for: literate programming, pipeline
toolkits, package reproducibility, project workflows, code/data
formatting tools, format convertors, and object caching.

The current maintainers gratefully acknowledge
[Max Kuhn](https://github.com/topepo)
for originally creating and maintaining this task view.

# Literate Programming

The primary way that R facilitates reproducible research is using a
document that is a combination of content and data analysis code. The
`Sweave` function (in the base R utils package) and the
`r pkg("knitr", priority = "core")` package can be used to
blend the subject matter and R code so that a single document defines
the content and the analysis. The `r pkg("brew")` and
`r pkg("R.rsp")` packages contain alternative approaches to
embedding R code into various markups.

The resources for literate programming are best organized by the
document type/markup language:

## LaTeX

Both `Sweave` and `r pkg("knitr")` can process LaTeX files.
`r pkg("lazyWeave")` can create LaTeX documents from
scratch. `r pkg("RweaveExtra")` provides Sweave drivers with
additional options to control processing and output.

The `r pkg("knitr")` and `r pkg("rmarkdown")`
packages (along with [pandoc](https://pandoc.org/) ) can be used to
create slides using the LaTeX [beamer](https://ctan.org/pkg/beamer)
class.

Object Conversion Functions:

- *summary tables/statistics*:
  `r pkg("gtsummary")`,
  `r pkg("Hmisc", priority = "core")`,
  `r pkg("NMOF")`, `r pkg("papeR")`,
  `r pkg("quantreg")`, `r pkg("rapport")`,
  `r pkg("reporttools")`, `r pkg("sparktex")`,
  `r pkg("table1")`,
  `r pkg("tables")`,
  `r pkg("xtable", priority = "core")`,
  `r pkg("ztable")`,
  `r pkg("codebook")`
- *tables/cross-tabulations*:
  `r pkg("gtsummary")`, `r pkg("Hmisc")`,
  `r pkg("huxtable")`, `r pkg("lazyWeave")`,
  `r pkg("knitLatex")`, `r pkg("knitr")`,
  `r pkg("reporttools")`,
  `r pkg("table1")`,
  `r pkg("ztable")`
- *graphics*: `r pkg("animation")`,
  `r pkg("Hmisc")`, `grDevices:::pictex`,
  `r pkg("sparktex")`, `r pkg("tikzDevice")`
- *statistical models/methods*:
  `r pkg("gtsummary")`,
  `r pkg("memisc")`, `r pkg("quantreg")`,
  `r pkg("rms", priority = "core")`,
  `r pkg("stargazer")`,
  `r pkg("texreg")`, `r pkg("xtable")`,
  `r pkg("ztable")`
- *bibtex*: `r pkg("bibtex")` and
  `r pkg("RefManageR")`
- *others*: `r pkg("latex2exp")` converts LaTeX equations
  to `plotmath` expressions.

Miscellaneous Tools

- `r pkg("Hmisc")` contains a function to correctly escape
  special characters. Standardized exams can be created using the
  `r pkg("exams")` package.

## HTML

The `r pkg("knitr")` package can process HTML files
directly. `Sweave` can also work with HTML by way of the
`r pkg("R2HTML", priority = "core")` package.
`r pkg("lazyWeave")` can create HTML format documents from
scratch.

For HTML slides, a combination of the `r pkg("knitr")` and
`r pkg("rmarkdown")` packages (along with
[pandoc](https://pandoc.org/) ) can be used to create slides using
[ioslides](https://bookdown.org/yihui/rmarkdown/ioslides-presentation.html)
, [reveal.js](https://revealjs.com/) ,
[Slidy](https://www.w3.org/Talks/Tools/Slidy2/) , or
[remark.js](https://remark.js.org/) (from the
`r pkg("xaringan")` package).

The packages `r pkg("blogdown")`, `r pkg("bookdown")`, and `r pkg("distill")`
can create entire websites.

Object Conversion Functions:

- *summary tables/statistics*:
  `r pkg("gtsummary")`,
  `r pkg("parameters")`,
  `r pkg("stargazer")`,
  `r pkg("table1")`,
  `r pkg("codebook")`
- *tables/cross-tabulations*: `r pkg("DT")`,
  `r pkg("flextable")`,
  `r pkg("formattable")`, `r pkg("gt")`,
  `r pkg("gtsummary")`,
  `r pkg("htmlTable")`, `r pkg("HTMLUtils")`,
  `r pkg("huxtable")`, `r pkg("hwriter")`,
  `r pkg("knitr")`, `r pkg("lazyWeave")`,
  `r pkg("table1")`,
  `r pkg("texreg")`, `r pkg("ztable")`
- *statistical models/methods*:
  `r pkg("gtsummary")`, `r pkg("rapport")`,
  `r pkg("stargazer")`, `r pkg("xtable")`
- *others*: `r pkg("knitcitations")`,
  `r pkg("RefManageR")`

Miscellaneous Tools: `r pkg("htmltools")` has various tools
for working with HTML. `r pkg("tufterhandout")` can create
Tufte-style handouts.

## Markdown

The `r pkg("knitr")` package can process markdown files
without assistance. The packages `r pkg("markdown")` and
`r pkg("rmarkdown")` have general tools for working with
documents in this format. `r pkg("lazyWeave")` can create
markdown format documents from scratch. Also, the
`r pkg("ascii")` package can write R objects to the
[AsciiDoc](https://asciidoc.org/) format.

Object Conversion Functions:

- *summary tables/statistics*: `r pkg("gtsummary")`, `r pkg("papeR")`
- *tables/cross-tabulations*: `r pkg("DT")`,
  `r pkg("formattable")`,
  `r pkg("gtsummary")`,
  `r pkg("htmlTable")`, `r pkg("knitr")`,
  `r pkg("lazyWeave")`, `r pkg("papeR")`,
  `r pkg("parameters")`
- *statistical models/methods*:
  `r pkg("gtsummary")`, `r pkg("pander")`,
  `r pkg("papeR")`, `r pkg("rapport")`,
  `r pkg("texreg")`
- *others*: `r pkg("RefManageR")`

Miscellaneous Tools: `r pkg("tufterhandout")` can create
Tufte-style handouts. `r pkg("kfigr")` allows for figure
indexing in markdown documents.
`r pkg("reproducibleRchunks")` can automatically check computational results
from a `r pkg("knitr")` code chunk for reproducibility.

## Microsoft/LibreOffice Formats

The `r pkg("officer")` (formerly ReporteRs and before that
R2DOCX) package can create `docx` and
`pptx` files. `r pkg("R2wd")` (windows
only) can also create Word documents from scratch and
`r pkg("R2PPT")` (also windows only) can create PowerPoint
slides. The `r pkg("rtf")` package does the same for Rich
Text Format documents. The `r pkg("openxlsx")` package
creates `xlsx` files. The
`r pkg("readODS")` package can read and write Open Document
Spreadsheets.

Object Conversion Functions:

- *summary tables/statistics*: `r pkg("codebook")`, `r pkg("codebookr")`
- *tables/cross-tabulations*: `r pkg("flextable")`,
  `r pkg("huxtable")`, `r pkg("pharmaRTF")`,
  `r pkg("r2rtf")`
- *graphics*: `r pkg("mschart")`
- *others*: `r pkg("unrtf")`

# Pipeline Toolkits

[Pipeline toolkits](https://github.com/pditommaso/awesome-pipeline) help
maintain and verify reproducibility. They synchronize computational
output with the underlying code and data, and they tell the user when
everything is up to date. In other words, they provide concrete evidence
that results are re-creatable from the starting materials, and the data
analysis project does not need to rerun from scratch. The
`r pkg("targets")` package is such a pipeline toolkit. It is
similar to [GNU Make](https://www.gnu.org/software/make/) , but it is
R-focused.

- `r pkg("drake")`: A general-purpose computational engine
  for data analysis, drake rebuilds intermediate data objects when
  their dependencies change, and it skips work when the results are
  already up to date.
- `r pkg("maestro")`: Framework for creating and orchestrating data pipelines.
  Organize, orchestrate, and monitor multiple pipelines in a single project. Use
  tags to decorate functions with scheduling parameters and configuration.
- `r pkg("makeit")`: Run R scripts if needed, based on last modified
  time. It comes with no package dependencies, organizational overhead,
  or structural requirements.
- `r pkg("makepipe")`: A suite of tools for transforming
  an existing workflow into a self-documenting pipeline with very
  minimal upfront costs.
- `r pkg("pipeflow")`: Offers a beginner-friendly framework that simplifies and
  streamlines the development of data analysis pipelines by making them modular,
  intuitive, and adaptable.
- `r pkg("repo")`: A data manager meant to avoid manual
  storage/retrieval of data to/from the file system.
- `r pkg("rixpress")`: Leverage Nix to orchestrate fully polyglot reproducible
  analytical pipelines across R, Python, and Julia.
- `r pkg("targets")`: As a pipeline toolkit for Statistics
  and data science in R, the 'targets' package brings together
  function-oriented programming and 'Make'-like declarative
  workflows.

# Package Reproducibility

R has various tools for ensuring that specific packages versions can be
required for analyses. As an example, the `r pkg("renv")`
package installs packages in project-specific directory, records
"snapshots" of the current package versions in a "lockfile", and
restores the package setup on a different machine.

- `r pkg("checkpoint")`: Allows you to install packages as
  they existed on CRAN on a specific snapshot date as if you had a
  CRAN time machine.
- `r github("o2r-project/containerit")` (GitHub only): Package R sessions,
    scripts, workspace directories, and R Markdown documents together with all
    dependencies to execute them in Docker containers.
- `r pkg("dateback")`: Works like a virtual CRAN snapshot for source packages.
  It automatically downloads and installs 'tar.gz' files with dependencies, all
  of which were available on a specific day.
- `r pkg("groundhog")`: Make R scripts that rely on
  packages reproducible, by ensuring that every time a given script is
  run, the same version of the used packages are loaded.
- `r pkg("liftr")`: Persistent reproducible reporting by
  containerization of R Markdown documents.
- `r pkg("miniCRAN")`: Makes it possible to create an
  internally consistent repository consisting of selected packages
  from CRAN-like repositories.
- `r pkg("packrat")`: Manage the R packages your project
  depends on in an isolated, portable, and reproducible way.
- `r pkg("rang")`: Resolve the dependency graph of R packages at a specific time
  point in order to reconstruct the R computational environment.
- `r pkg("renv")`: Create and manage project-local R
  libraries, save the state of these libraries to a 'lockfile', and
  later restore your library as required.
- `r pkg("Require")`: A single key function, 'Require' that makes rerun-tolerant
  versions of 'install.packages' and 'require' for CRAN packages, packages no
  longer on CRAN (i.e., archived), specific versions of packages, and GitHub
  packages.
- `r pkg("rix")`: Simplifies the creation of reproducible development
  environments using the 'Nix' package manager.
- `r pkg("switchr")`: Provides an abstraction for
  managing, installing, and switching between sets of installed R
  packages.

# Project Workflows

Successfully completing a data analysis project often requires much more
than statistics and visualizations. Efficiently managing the code, data,
and results as the project matures helps reduce stress and errors. The
following "workflow" packages assist the R programmer by managing
project infrastructure and/or facilitating a reproducible workflow.

Workflow utility packages provide single-use functions to implement
project infrastructure or solve a specific problem. As a typical
example, `usethis::use_git()` initializes a Git repository, ignores
common R files, and commits all project files.

- `r pkg("cabinets")`: Creates project specific directory
  and file templates that are written to a .Rprofile file.
- `r pkg("here")`: Constructs paths to your project's
  files.
- `r pkg("prodigenr")`: Create a project directory
  structure, along with typical files for that project.
- `r pkg("RepoGenerator")`: Generates a project and repo
  for easy initialization of a GitHub repo for R workshops.
- `r github("benmarwick/rrtools")` (GitHub only):
  Instructions, templates, and functions for making a basic compendium
  suitable for doing reproducible research with R.
- `r pkg("starter")`: Get started with new projects by dropping a skeleton of a
  new project into a new or existing directory, initialise git repositories, and
  create reproducible environments with the 'renv' package.
- `r github("lockedata/starters")` (GitHub only):
  Setting up R project directories for teaching, presenting, analysis,
  package development can be a pain. starters shortcuts this by
  creating folder structures and setting good defaults for you.
- `r pkg("trackdown")`: Collaborative writing and editing of R Markdown (or
  Sweave) documents via Google Docs.
- `r pkg("usethis")`: Automate package and project setup
  tasks that are otherwise performed manually.

Workflow framework packages provide an organized directory structure and
helper functions to assist during the development of the project. As a
typical example, `ProjectTemplate::create.project()` creates an
organized setup with many subdirectories, and
`ProjectTemplate::run.project()` executes each R script that is saved in
the `src/` subdirectory.

- `r pkg("exreport")`: Analysis of experimental results
  and automatic report generation in both interactive HTML and LaTeX.
- `r pkg("madrat")`: Provides a framework which should
  improve reproducibility and transparency in data processing. It
  provides functionality such as automatic meta data creation and
  management, rudimentary quality management, data caching, work-flow
  management and data aggregation.
- `r pkg("orderly")`: Order, create and store reports
  from R.
- `r pkg("projects")`: Provides a project infrastructure
  with a focus on manuscript creation.
- `r pkg("ProjectTemplate")`: Provides functions to
  automatically build a directory structure for a new R project. Using
  this structure, 'ProjectTemplate' automates data loading,
  preprocessing, library importing and unit testing.
- `r pkg("rcompendium")`: Makes easier the creation of R package or research
  compendium (i.e. a predefined files/folders structure) so that users can focus
  on the code/analysis instead of wasting time organizing files.
- `r pkg("reportfactory")`: Provides an infrastructure for
  handling multiple R Markdown reports, including automated curation
  and time-stamping of outputs, parameterisation and provision of
  helper functions to manage dependencies.
- `r pkg("represtools")`: Reproducible research tools
  automates the creation of an analysis directory structure and work
  flow. There are R markdown skeletons which encapsulate typical
  analytic work flow steps. Functions will create appropriate modules
  which may pass data from one step to another.
- `r pkg("TAF")`: General framework to organize data, methods, and
  results used in reproducible scientific analyses. A TAF analysis
  consists of four scripts (data.R, model.R, output.R, report.R) that
  are run sequentially.
- `r pkg("tinyProject")`: Creates useful files and folders
  for data analysis projects and provides functions to manage data,
  scripts and output files.
- `r pkg("worcs")`: Create reproducible and transparent
  research projects in 'R'. This package is based on the Workflow
  for Open Reproducible Code in Science (WORCS), a step-by-step
  procedure based on best practices for Open Science.
- `r pkg("workflowr")`: Provides a workflow for your
  analysis projects by combining literate programming ('knitr' and
  'rmarkdown') and version control ('Git', via 'git2r') to
  generate a website containing time-stamped, versioned, and
  documented results.

# Formatting Tools

`r pkg("formatR")` and `r pkg("styler")` can be
used to format R code.

`r pkg("highlight")` and `r pkg("highr")` can be
used to color R code.

Packages `r pkg("humanFormat")`,
`r pkg("lubridate")`, `r pkg("prettyunits")`,
and `r pkg("rprintf")` have functions to better format data.

# Format Convertors

`r pkg("pander")` can be used for rendering R objects into
[Pandoc's](http://pandoc.org/) markdown. `r pkg("knitr")`
has the function `pandoc` that can call an installed
version of [Pandoc](http://pandoc.org/) to convert documents between
formats such as Markdown, HTML, LaTeX, PDF and Word.
`r pkg("tth")` facilitates TeX to HTML/MathML conversions.

# Object Caching Packages

When using `Sweave` and `r pkg("knitr")` it can be
advantageous to *cache* the results of time consuming code chunks if the
document will be re-processed (i.e. during debugging).
`r pkg("knitr")` facilitates object caching and the
Bioconductor package `r bioc("weaver")` can be used with
`Sweave`.

Non-literate programming packages to facilitate caching/archiving are
`r pkg("archivist")`, `r pkg("R.cache")`,
`r pkg("reproducible")`, and `r pkg("storr")`.

### Links

- [Sweave: Dynamic Generation of Statistical Reports Using Literate Data Analysis](https://doi.org/10.1007/978-3-642-57489-4_89)
- [knitr: Elegant, flexible and fast dynamic report generation with R](http://yihui.name/knitr/)
- [Wikipedia: Literate Programming](http://en.wikipedia.org/wiki/Literate_Programming)
- [Harrell: Reproducible Research (Biostatistics for Biomedical Research)](https://hbiostat.org/rr)
- [Koenker, Zeileis: On Reproducible Econometric Research](http://www.econ.uiuc.edu/~roger/research/repro/)
- [Peng: Reproducible Research and Biostatistics](https://doi.org/10.1093/biostatistics/kxp014)
- [Rossini, Leisch: Literate Statistical Practice](https://biostats.bepress.com/uwbiostat/paper194)
- [Baggerly, Coombes: Deriving Chemosensitivity from Cell Lines: Forensic Bioinformatics and Reproducible Research in High-Throughput Biology](http://dx.doi.org/10.1214/09-AOAS291)
- [Leisch: Sweave, Part I: Mixing R and LaTeX](https://www.R-project.org/doc/Rnews/Rnews_2002-3.pdf)
- [Leisch: Sweave, Part II: Package Vignettes](https://www.R-project.org/doc/Rnews/Rnews_2003-2.pdf)
- [Betebenner: Using Control Structures with Sweave](https://www.R-project.org/doc/Rnews/Rnews_2005-1.pdf)
- [Garbade, Burgard: Using R/Sweave in Everyday Clinical Practice](https://www.R-project.org/doc/Rnews/Rnews_2006-2.pdf)
- [Gorjanc: Using Sweave with LyX](https://www.R-project.org/doc/Rnews/Rnews_2008-1.pdf)
- [Lecoutre: The R2HTML Package](https://www.R-project.org/doc/Rnews/Rnews_2003-3.pdf)
- [List of pipeline toolkits](https://github.com/pditommaso/awesome-pipeline)
- [Computational Environments and Reproducibility](https://github.com/o2r-project/ctv-computational-environments#readme)
- [Bryan: Project-oriented workflow](https://www.tidyverse.org/articles/2017/12/workflow-vs-script/)
- [rOpenSci: Reproducibility in Science](https://ropensci-archive.github.io/reproducibility-guide/)
- [Temple Lang, Gentleman: Statistical Analyses and Reproducible Research](https://doi.org/10.1198/106186007X178663)
- [Marwick, Boettiger, Mullen: Packaging Data Analytical Work Reproducibly Using R (and Friends)](https://doi.org/10.1080/00031305.2017.1375986)
- [Xie: Write An R Package Using Literate Programming Techniques](https://yihui.org/rlp/)
- [Rolland: Reproducible Research in R (and friends)](https://mjrolland.github.io/reproducibility-checklist/cheatsheet.html)
- [Schratz: Reproducibility of parallel tasks in R](https://pat-s.me/reproducibility-when-going-parallel/)
