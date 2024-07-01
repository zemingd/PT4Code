package main
import (
  "fmt"
)
func main() {
  var s string
  fmt.Scan(&s)
  var result string
  if s == "Sunny" {
    result = "Cloudy"
  } else if s == "Cloudy" {
    result = "Rainy"
  } else {
    result = "Sunny"
  }
  fmt.Println(result)
}