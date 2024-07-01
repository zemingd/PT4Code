package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	as := make([]int, n)
	for i := 0; i < n; i++ {
		var s int
		fmt.Scanf("%d", &s)
		as[i] = s
	}

	as = append([]int{0}, as...)
	as = append(as, 0)
	sum := 0
	ds := make([]int, len(as)-1)
	for i := 0; i < len(as)-1; i++ {
		d := as[i+1] - as[i]
		if d < 0 {
			d = -d
		}
		ds[i] = d
		sum += d
	}
	for i := 1; i < len(as)-1; i++ {
		d1 := as[i+1] - as[i-1]
		if d1 < 0 {
			d1 = -d1
		}
		d2 := as[i] - as[i-1]
		if d2 < 0 {
			d2 = -d2
		}
		d3 := as[i+1] - as[i]
		if d3 < 0 {
			d3 = -d3
		}
		fmt.Printf("%d\n", sum+d1-d2-d3)
	}
}
