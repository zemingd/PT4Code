package main

import "fmt"

func main() {
  fmt.Scan(&weather)
  switch weather {
  case "Sunny":
    fmt.Println("Cloudy")
  case "Cloudy":
    fmt.Println("Rainy")
  case "Rainy":
    fmt.Println("Sunny")
  default:
    fmt.Println("No season")
  }
}