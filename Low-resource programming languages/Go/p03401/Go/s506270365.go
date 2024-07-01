package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	s := []int{}
	for i := 0; i < n; i++ {
		var c int
		fmt.Scan(&c)
		s = append(s, c)
	}
	for i := 0; i < len(s); i++ {
		var sum int
		for k := 0; k < len(s); k++ {
			if i == k {
				if s[k] < 0 {
					sum += s[k] * 2
				}
			} else {
				var x float64
				x = float64(s[k])
				x = math.Abs(x)
				var iii int
				iii = int(x)
				sum += iii * 2
			}
		}
		fmt.Println(sum)
	}
}
