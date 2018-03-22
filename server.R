#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(forecast)
source("global.R")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  
  data1 <- reactive({rowdata[((1+(4*(input$date1[1]-2000)))+(72*((as.numeric(input$type1))-1))):
                               ((4*(input$date1[2]-1999))+(72*((as.numeric(input$type1))-1)))
                             ,input$country1]})
  output$plot1 <- renderPlot({
    plot(ts(data1(), frequency = 4, start = input$date1[1]), col="red",
         xlab = "Rok", ylab = "Stopa inflacji")
    legend("topleft", legend = c(input$country1),
           col=c("red"), lwd=2)
  })
  output$text1 <- renderPrint({summary(data1())})
  
  data2a <- reactive({rowdata[((1+(4*(input$date2[1]-2000)))+(72*((as.numeric(input$type2))-1))):
                               ((4*(input$date2[2]-1999))+(72*((as.numeric(input$type2))-1)))
                             ,input$country2a]})
  data2b <- reactive({rowdata[((1+(4*(input$date2[1]-2000)))+(72*((as.numeric(input$type2))-1))):
                                ((4*(input$date2[2]-1999))+(72*((as.numeric(input$type2))-1)))
                              ,input$country2b]})
  output$plot2 <- renderPlot({
    plot(ts(data2a(), frequency = 4, start = input$date2[1]), col="red",
         xlab = "Rok", ylab = "Stopa inflacji", ylim = c(min(data2a(),data2b(), na.rm = TRUE),max(data2a(),data2b(), na.rm = TRUE)))
    lines(ts(data2b(), frequency = 4, start = input$date2[1]),col="blue")
    legend("topleft", legend = c(input$country2a, input$country2b),
           col=c("red", "blue"), lwd=2)
  })
  output$text2a <- renderText({"Korelacja liczona metoda Pearsona"})
  output$text2 <- renderPrint({cor(data2a(), data2b(), method = "pearson")})
  
  
  
  data3 <- reactive({rowdata[((1+(4*(input$date3[1]-2000)))+(72*((as.numeric(input$type3))-1))):
                               ((4*(input$date3[2]-1999))+(72*((as.numeric(input$type3))-1)))
                             ,input$country3]})
  
  
  output$plot3 <- renderPlot({plot(stl(ts(data3(), frequency = 4, start = input$date3[1]),"per"))})

  output$text3 <- renderPrint({stl(ts(data3(), frequency = 4, start = input$date3[1]),"per")})

  data4 <- reactive({rowdata[(1+(72*((as.numeric(input$type4))-1))):
                               (72+(72*((as.numeric(input$type4))-1)))
                             ,input$country4]})
  output$plot4 <- renderPlot({
    plot(forecast(auto.arima(ts(data4(), frequency = 4, start = 2000)), h=length(data4())))
  })
  
  output$plot5 <- renderPlot({plot(hclust(clust[[as.numeric(input$type5)]],method="complete"),col = "gray0",
                                   lwd = 2, lty = 5, sub = "", hang = -1, xlab="")})
})
