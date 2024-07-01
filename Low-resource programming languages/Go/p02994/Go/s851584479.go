package main

import (
	"fmt"
)

func main() {
	var n,l int
	fmt.Scan(&n,&l)

	apples := make([]int,n) 

	for i,_ := range apples {
		apples[i] = l + i+1 - 1
	}
	
	sum := 0
	if l >= 0 {
		for i := 1; i < len(apples); i++ {
			sum += apples[i]
		}
	} else if n + l > 0 {
		for i := 0; i < len(apples); i++ {
			sum += apples[i]
		}
	} else {
		for i := 0; i < len(apples)-1 ; i++ {
			sum += apples[i]
		}
	}
	fmt.Println(sum)
}