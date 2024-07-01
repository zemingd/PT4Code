package main

import (
	"fmt"
)

func main() {
  var s string
  fmt.Scanf("%s", &s)
  
  tomorrow := map[string]string{"Sunny":"Cloudy", "Cloudy":"Rainy", "Rainy":"Sunny"}
  fmt.Printf("%s\n", tomorrow[s])
}