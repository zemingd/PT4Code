package main

import (
	"fmt"
)

func main() {
	var s string
  	fmt.Scan(&s)
  	
  for i := 0; i < len(s); i++ {
    if i % 2 == 0 {
      fmt.Printf("%s",string(s[i]))
    }
  }
}