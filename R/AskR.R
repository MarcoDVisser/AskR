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

AskR<-function(question="Will this package be a great success?")
{
  
  # Only allow one question.  Berate the user if they try to ask more
  if(length(question) > 1){
    stop("Only ask a single question you jerk")
  }
  
  response<-sample(1:length(.Responses),1)
  
  # If there is a question mark at the end strip it away
  question <- gsub("[[:space:]]*\\?[[:space:]]*", "", question)
  # Add a question mark
  question <- paste0(question, "?")
  
  if(question=="Will this package be a great success?"){
    response <- 20
  } 
  
  cat(question)
  cat("\n\n")
  cat("R says:  ", .Responses[response], "\n")
  
}
