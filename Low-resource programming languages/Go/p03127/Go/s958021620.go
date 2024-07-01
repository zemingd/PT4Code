package main

import (
	"fmt"
)

func main()  {
	var n int

	fmt.Scan(&n)
	a := make([]int64, n)

	for i := range a {
		fmt.Scan(&a[i])
	}

	x :=  a[0]
	for i:=1;i<n;i++ {
		x = gcd(x, a[i])
		//fmt.Println(x)
	}

	fmt.Println(x)
}

func gcd(x int64, y int64) int64 {
	if x < y {
		x, y = y, x
	}
	//fmt.Println(x, y)
	z := x%y
	x =  x/y
	//fmt.Printf("%d %d %d\n",x, z, y)

	if z == 0 {
		return y
	} else {
		return gcd(y, z)
	}
}