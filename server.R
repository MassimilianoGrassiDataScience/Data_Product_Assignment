shinyServer(function(input, output) {
        
        #Calculate BMI
        output$BMI <- renderPrint({round((input$weight / ((input$height)^2)),2)})
          
        # Assign to the WHO classification according to BMI value
        output$BMI_status  <- renderText({        
                                if ((input$weight / ((input$height)^2))>=30) {'According to the WHO classification, you are obese. This can severely harm your health!'}
                                else if ((input$weight / ((input$height)^2))>=25) {'According to the WHO classification, you are overweight.'}
                                else if ((input$weight / ((input$height)^2))>=18.5) {'According to the WHO classification, you have a healthy weight.'}
                                else if ((input$weight / ((input$height)^2))>=18.5) {'According to the WHO classification, you are underweight.'}
                                else {'According to the WHO classification, you are severily underweight. This can severely harm your health!'}
                                })
} )