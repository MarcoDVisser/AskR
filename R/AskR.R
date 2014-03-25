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

response<-sample(1:length(.Responses),1)

if(question=="Will this package be a great success?"){
 cat(question,"?","\n")
 cat("\n")
 cat("R says:  ",.Responses[20],"\n")
} else {

cat(question,'?',"\n")
cat("\n")
cat("R says:  ",.Responses[response],"\n")
 }
}
