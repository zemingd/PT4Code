package main

import (
	"fmt"
)

func main(){
	var a, b, c int
	fc.Scan(&a, &b, &c)
	if a > b {
		b, a = a, b
	}
	if b > c {
		b, c = c, b
	}
	fmt.Printf("%d %d %d", a, b, c)
}
