package main

import (
	"fmt"
)

func main() {
	var nn int
	fmt.Scanf("%d", &nn)
	pp := make([]int, nn)
	for ii:=0;ii<nn;ii++ {
		fmt.Scanf("%d", &pp[ii])
	}

	var result int
	result++
	min := pp[0]
	for ii:=1;ii<nn;ii++ {
		if pp[ii] <= min {
			result++
		}
		if pp[ii] < min {
			min = pp[ii]
		}
	}

	fmt.Printf("%v\n", result)
}
