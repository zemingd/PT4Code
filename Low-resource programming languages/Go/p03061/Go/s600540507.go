package main

import (
	"fmt"
	"math"
)

func main()  {
	var n int
	fmt.Scan(&n)
	a := make([]int64, n)

	for i:=0; i<n; i++ {
		fmt.Scan(&a[i])
	}

	var max int64
	var val int64
	l := make([]int64, n)
	r := make([]int64, n)
	l[1] = a[0]
	r[n-2] = a[n-1]
	for i:=2; i<n; i++ {
		l[i] = gcd(l[i-1], a[i])
		r[n-1-i] = gcd(r[n-i], a[n-i])
	}

	for i:=0; i<n; i++ {
		if l[i] == 0 {
			val = r[i]
		} else if r[i] == 0 {
			val = l[i]
		} else {
			val = gcd(l[i], r[i])
		}
		//fmt.Println(i,r[i],l[i])
		max = int64(math.Max(float64(max), float64(val)))
	}

	fmt.Println(max)
}
func gcd(x int64, y int64) int64 {
	if x < y {
		x, y = y, x
	}

	if z := x%y; z == 0 {
		return y
	} else {
		return gcd(y, z)
	}
}
