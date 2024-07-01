package main

import (
	"fmt"
)

func main() {
	var a, b, c uint64
	fmt.Scanf("%d %d %d\n", &a, &b, &c)
	if a + b >= c {
		fmt.Println("No")
	} else {
		l := 4 * a * b
      r := (c - a - b) * (c - a - b)
     
		if l < r {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}
}
