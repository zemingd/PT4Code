package main

import (
	"fmt"
)

func main() {

	var a,b,c int
	fmt.Scanf("%d %d %d", &a, &b, &c)

	var count int 
	if a == b {
		count ++
	}
	if a == c {
		count ++
	}
	if b == c {
		count ++
	}
	if count == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
	
}