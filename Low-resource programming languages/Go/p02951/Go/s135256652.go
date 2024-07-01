package main

import "fmt"

func main() {
	var a,b,c,result int
	fmt.Scan(&a,&b,&c)
	
	result = 0
	if (a - b) >= c {
		result = 0
	} else {	// (a - b) < c
		result = c - (a - b)
	}
	fmt.Printf("%d", result)
}