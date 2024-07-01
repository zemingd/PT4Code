package main

import "fmt

func main() {
  var s string
  fmt.Scan(&s)
  if s == "Sunny" {
    fmt.Println("Cloudy")
  } else if s == "Cloudy" {
    fmt.Println("Rainy")
  } else {
    fmt.Println("Sunny")
  }
}