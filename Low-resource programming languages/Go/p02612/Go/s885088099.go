package main

import (
  "fmt"
)

func main () {
  var a int
  fmt.Scanf("%d", &a)
  if a%1000 == 0 {
	fmt.Println(0)
	return
  }
  fmt.Printf("%d\n", 1000 - a%1000)
}
