package main

import (
	"fmt"
)

func main() {
	var a,b,sum int
	var tako []int
	c := 1
	fmt.Scanf("%d", &a)

	for i:=0; i<a; i++{
		fmt.Scanf("%d", &b)
		tako = append(tako, b)
	}
	for j:=0; j<len(tako); j++{
		for k:=c; k<len(tako); k++{
			sum += tako[j] * tako[k]
		}
		c++
	}
	fmt.Println(sum)
}
