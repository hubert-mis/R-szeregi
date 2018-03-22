#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)

shinyUI(navbarPage("Analiza danych o inflacji w Unii Europejskiej",
                   tabPanel("Podstawowe dane",
                            sidebarLayout(
                              sidebarPanel(
                                selectInput("country1",h4("Panstwo:"),
                                            choices = colnames(rowdata),
                                            selected = "Polska"),
                                selectInput("type1",h4("Sektor:"),
                                            choices = list("Energia"=1,
                                                           "Zywnosc"=2,
                                                           "Ogolnie"=3)),
                                sliderInput("date1", h4("Wybierz zakres lat:"), 
                                            min = 2000, max = 2017, 
                                            value = c(2010,2017))
                              ),
                              mainPanel(
                                plotOutput("plot1"),
                                verbatimTextOutput("text1")
                              )
                            )
                   ),
                   tabPanel("Korelacja",
                            sidebarLayout(
                              sidebarPanel(
                                selectInput("country2a",h4("Panstwo:"),
                                            choices = colnames(rowdata),
                                            selected = "Polska"),
                                selectInput("country2b",h4("Panstwo:"),
                                            choices = colnames(rowdata),
                                            selected = "Austria"),
                                selectInput("type2",h4("Sektor:"),
                                            choices = list("Energia"=1,
                                                           "Zywnosc"=2,
                                                           "Ogolnie"=3)),
                                sliderInput("date2", h4("Wybierz zakres lat:"), 
                                            min = 2000, max = 2017, 
                                            value = c(2010,2017))
                              ),
                              mainPanel(
                                plotOutput("plot2"),
                                textOutput("text2a"),
                                verbatimTextOutput("text2")
                              )
                            )
                   ),
                   tabPanel("Sezonowosc",
                            sidebarLayout(
                              sidebarPanel(
                                selectInput("country3",h4("Panstwo:"),
                                            choices = colnames(rowdata),
                                            selected = "Polska"),
                                selectInput("type3",h4("Sektor:"),
                                            choices = list("Energia"=1,
                                                           "Zywnosc"=2,
                                                           "Ogolnie"=3)),
                                sliderInput("date3", h4("Wybierz zakres lat:"), 
                                            min = 2000, max = 2017, 
                                            value = c(2010,2017))
                              ),
                              mainPanel(
                                plotOutput("plot3"),
                                verbatimTextOutput("text3")
                              )
                            )
                   ),
                   tabPanel("Prognozowanie",
                            sidebarLayout(
                              sidebarPanel(
                                selectInput("country4",h4("Panstwo:"),
                                            choices = colnames(rowdata),
                                            selected = "Polska"),
                                selectInput("type4",h4("Sektor:"),
                                            choices = list("Energia"=1,
                                                           "Zywnosc"=2,
                                                           "Ogolnie"=3))
                              ),
                              mainPanel(
                                plotOutput("plot4"),
                                verbatimTextOutput("text4")
                              )
                            )
                   ),
                   tabPanel("Klasteryzacja",
                            sidebarLayout(
                              sidebarPanel(
                                selectInput("type5",h4("Sektor:"),
                                            choices = list("Energia"=1,
                                                           "Zywnosc"=2,
                                                           "Ogolnie"=3),
                                            selected = 1)
                              ),
                              mainPanel(
                                plotOutput("plot5")
                              )
                            )
                   )
))
                              
                                
                        