library(shiny)

angRad<- function(rad) (rad*pi)/180

H <- function(v,a,g) ((v**2)*(sin(a)*sin(a)))/(2*g)

L <- function(v,a,g) ((v**2)*(sin(a*2)))/g

Ti <- function(v,a,g) (2*v*sin(a))/g

Y<- function(v,a,g,x) ((v*sin(a))*x)-(1/2)*g*x**2

X<- function(v,a,x) (v*cos(a)*x)



shinyServer(
  function(input,output){
    g <<- 9.8
    
    output$High <- renderPlot(
        plot(Y(input$V0,angRad(input$angulo),g,seq(1,Ti(input$V0,angRad(input$angulo),g))),
             xlab="Time",ylab="High")       
      )
    output$Long <- renderPlot(
        plot(X(input$V0,angRad(input$angulo),seq(1,Ti(input$V0,angRad(input$angulo),g))),
             xlab="Time",ylab="Long")
        )
    

  })

