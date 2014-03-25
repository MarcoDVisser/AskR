.Responses<-c("It is certain",
"It is decidedly so",
"Without a doubt",
"Yes definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Outlook good",
"Yes",
"Signs point to yes",
"Reply hazy try again",
"Ask again later",
"Better not tell you now",
"Cannot predict now",
"Concentrate and ask again",
"Don't count on it",
"My reply is no",
"My sources say no",
"Outlook not so good",
"Very doubtful")

#' Decision Maker
#' 
#' AskR is an interface that helps you make those important life-decisions using 
#' R.
#' 
#' @param question a yes no question about anything really. Must be a character, 
#' e.g. "Will this package be a great success?".
#' @return Returns a character vector of the class AskR
#' @keywords fortune question
#' @export
#' @examples
#' # pick a color
#' AskR(question="Will this package be a great success?")
#' \dontrun{
#' library(devtools)
#' install_github("cowsay", "sckott")
#' library(cowsay)
#' 
#' say(AskR("Will robots be terminated?")) 
#' }
AskR <- function(question="Will this package be a great success?") {

    predet <- "Will this package be a great success?"
    response <- ifelse(question == predet, 20, sample(1:length(.Responses), 1))
    out <- sprintf("%s ?\n\nR says:  %s", question, .Responses[response])
    class(out) <- c("AskR", class(out))
    out
}

#' Prints a AskR Object
#' 
#' Prints a AskR object.
#' 
#' @param x The AskR object.
#' @param \ldots ignored
#' @method print AskR
#' @S3method print AskR
print.AskR <- function(x, ...) {

    cat(x, "\n")

}

