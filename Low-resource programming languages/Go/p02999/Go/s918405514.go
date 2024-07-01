package main

import (
	"fmt"
)

func main() {
	var x int
  	var a int
	fmt.Scan(&x)
	fmt.Scan(&a)

  if x < a {
    fmt.Println("0")
  } else {
    fmt.Println("10")
  }
}
