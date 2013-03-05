# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.selectChart = (index) -> 
  if index == 0
    new google.visualization.PieChart(document.getElementById('chart_div'))
  else if index == 1
    new google.visualization.BarChart(document.getElementById('chart_div'))
  else if index == 2
    new google.visualization.LineChart(document.getElementById('chart_div'))
