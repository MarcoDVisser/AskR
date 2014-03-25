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

.AskR_User_isajerk_count <- 0

AskR<-function(question="Will this package be a great success?")
{
  
  if(.AskR_User_isajerk_count > 0){
    .AskR_User_isajerk_count <<- .AskR_User_isajerk_count - 1
    stop("You were a jerk so now I insult you", "\n", "Your mother was a hamster and your father smelt of elderberries")
  }
  
  # Only allow one question.  Berate the user if they try to ask more
  if(length(question) > 1){
    .AskR_User_isajerk_count <<- .AskR_User_isajerk_count + 1
    stop("Only ask a single question you jerk. Now I shall be forced to insult you")
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
