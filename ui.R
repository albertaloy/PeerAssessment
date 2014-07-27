

shinyUI(pageWithSidebar(
  headerPanel('Visualizing and clustering mtcars data'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(mtcars)),
    selectInput('ycol', 'Y Variable', names(mtcars),
                selected=names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
