package main

import (
  "fmt"
)

func main() {

  pattern := map[string]string{"Sunny": "Cloudy", "Cloudy": "Rainy", "Rainy": "Sunny"}
  
  var s string

  fmt.Scan(&s)

  fmt.Println(pattern[s])
}