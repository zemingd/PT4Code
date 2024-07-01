package main

import (
  "fmt"
)

func main() {
  var s string
  fmt.Scanf("%s", &s)
  contest := map[string]string{"ABC":"ARC", "ARC":"ABC"}
  
  fmt.Printf("%s\n", contest[s])
}