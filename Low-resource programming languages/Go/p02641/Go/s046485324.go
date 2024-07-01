package main

import (
	"fmt"
	"math"
)

func main() {
	var x, n int
	fmt.Scan(&x, &n)
	if n == 0 {
		fmt.Print(x)
		return
	}
	var p = make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		p[i] = tmp
	}
	ans := 100
	num := 0
	for i := 0; i < 100; i++ {
		bl := false
		for _, e := range p {
			if i == e {
				bl = true
				break
			}
		}
		if bl == true {
			continue
		}
		abs := int(math.Abs(float64(i - x)))
		if abs < ans {
			ans = abs
			num = i
		}
	}
	fmt.Print(num)
}
