package main

import (
	"fmt"
)

func abs(x int) int{
	if x < 0 {
		return -x
	} else {
		return x
	}
}

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i, _ := range a {
		fmt.Scan(&a[i])
	}
	a = append([]int{0}, a...)
	a = append(a, 0)
	//fmt.Println(a)

	d := 0
	for i := 0; i < len(a)-1; i++ {
		d += abs(a[i+1] - a[i])
	}
	for i := 1; i < len(a)-1; i++ {
		dd := abs(a[i+1] - a[i-1])
		ddd := abs(a[i] - a[i-1])
		dddd := abs(a[i+1] - a[i])
		fmt.Println(d + dd - ddd -dddd)
	}


	/*as = append([]int{0}, as...)
	fmt.Println(as)
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
	}*/
}
