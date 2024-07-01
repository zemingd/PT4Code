package main

import (
	"fmt"
	"math"
	"sort"
)

func main () {
	var n int
	fmt.Scan(&n)


	min := 1e10
	for i := 1; i * i <= n; i++ {
		if n % i == 0 {
			j := n / i
			max := math.Max(float64(calcDigit(i)), float64(calcDigit(j)))
			min = math.Min(max, min)
		}
	}
	fmt.Println(min)
}


func calcDigit(n int) int {
	cnt := 0
	for n > 0 {
		cnt++
		n = n / 10
	}
	return cnt

