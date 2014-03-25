AskR
==========

  'AskR' is an interface that helps you make those important life-decisions
  using R. 

Aren't you tired of making all those difficult life decisions yourself?
Aren't you tired of weighing the pros and the cons of everything all the time?

Well you no longer have to! Just use AskR!!


## Installation

Currently there isn't a release on [CRAN](http://cran.r-project.org/),
and I don't think there ever will be. You can 
download the [zip](https://github.com/MarcoDVisser/AskR/zipball/master) 
or [tar ball](https://github.com/MarcoDVisser/AskR/tarball/master).
Then decompress and run `R CMD INSTALL` on it, 
or use the **devtools** package to install the development version
(following code courtesy of [dasonk](https://github.com/Dasonk) ).

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("AskR", "MarcoDVisser")
```

Or find the relevant functions in /R and just 
add the source code to your .Rprofile.
 
## Usage Examples

```r
AskR(question="Will this package be a great success?")
#R says:   Very doubtful 

```
