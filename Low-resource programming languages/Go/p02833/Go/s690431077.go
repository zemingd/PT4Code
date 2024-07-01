package main

import (
	"fmt"
	"strconv"
)

func main(){
	var number float64
	fmt.Scanf("%f", &number)

	sum := calc(number)

	fmt.Printf("%d\n", countSuffixZero(sum))
}

func calc(n float64) float64{
	if n < 2 {
		return float64(1)
	}
	return n * calc(n - 2)
}

func countSuffixZero(n float64) int {
	str := strconv.FormatFloat(n, 'f', -1, 64)

	ret := 0
	for _, v := range str {
		if v != '0' {
			ret = 0
		} else {
			ret++
		}
	}
	return ret
}