library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Parabolic Motion"),
  sidebarPanel(
    numericInput(inputId="V0",label="Velocidad Inicial",0),
    sliderInput("angulo","Angulo de salida",value=0,min=0,max=90,step=1,),
    h4('You have to introduce de velocity and the angle of a parabolic motion,
       and you will see the graphics of this movement relative the time.')),
  mainPanel(plotOutput("High"),
            plotOutput("Long"))
))

