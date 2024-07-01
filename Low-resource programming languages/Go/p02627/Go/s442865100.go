package main

import (
	"fmt"
    "strings"
)

func main() {
	var s string
	fmt.Scan(&s)
  
  switch lower := strings.ToLower(s) == s; lower {
  case true: fmt.Print("a")
  case false: fmt.Print("A")
  }
}