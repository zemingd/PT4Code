package main

import (
	"fmt"
)

func main() {
	var a, b int
	
	fmt.Scan(&a,&b)
	
	calc := [3]int{a+b,a-b,a*b}

	fmt.Printf("%d\n", calc[2])

	result := calc[0]
	for i := 0; i < len(calc); i++ {
		if calc[i] > result {
			result = calc[i]
		}
	}
	fmt.Printf("%d", result)
	
}