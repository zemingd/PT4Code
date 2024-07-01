package main

import (
	"fmt"
	"math"
)

func solution(a, b, c float64) string {
	if c-(a+b) > 2*math.Sqrt(a*b) {
		return "Yes"
	}
	return "No"
}

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)
	fmt.Println(solution(a, b, c))
}
