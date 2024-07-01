package main

import "fmt"

func main() {
	var a int
	x := 0
  	fmt.Scan(&a)
  	if a/100 == 1 {
      x += 1
    }
  	if a%100/10 == 1 {
      x += 1
    }
  	if a%110/1 == 1 {
      x += 1
    }
    fmt.Print(x)
}