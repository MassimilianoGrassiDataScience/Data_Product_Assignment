shinyUI(pageWithSidebar( 
                headerPanel("Body Mass Index Calculator"),
                
                sidebarPanel(
                        h3('BMI is an common index used by the WHO to classify the weight of a person, taken into account its height.'),
                        h3('Use the sliders to insert your weight in kilograms and your height in meters to get your current BMI.'),
                                                 
                        sliderInput('weight', 'Your weight in kilograms', 65, min =30, max = 200, step=1),
                        
                        sliderInput('height', 'Your height in meters', 1.80, min =1, max = 2.30, step=0.01),
                
                        h4('BMI is calculated as weight (in kilograms) divided by the squared height (in meters)')
                        
                        ),
                
                mainPanel(
                        h3('Your current BMI is'),
                        verbatimTextOutput('BMI'),
                        
                        verbatimTextOutput('BMI_status')
                )
))
               
       