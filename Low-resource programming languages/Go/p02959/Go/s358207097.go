package main

import (
	"fmt"
	"math"
)

func main()  {
	var n int
	fmt.Scan(&n)
	a := make([]int, n+1)
	for i:= range a {
		fmt.Scan(&a[i])
	}
	b := make([]int, n)
	for i:= range b {
		fmt.Scan(&b[i])
	}

	var tmp, ans int
	for i:=n; i>0; i-- {
		//fmt.Println(int(math.Min(float64(b[i-1]), float64(a[i]))))
		tmp = int(math.Min(float64(b[i-1]), float64(a[i])))
		ans += tmp
		b[i-1] -= tmp
		a[i] -= tmp
		//fmt.Println(a,b)
		//fmt.Println(tmp)

		//fmt.Println(int(math.Min(float64(b[i-1]), float64(a[i-1]))))
		tmp = int(math.Min(float64(b[i-1]), float64(a[i-1])))
		ans += tmp
		b[i-1] -= tmp
		a[i-1] -= tmp
		//fmt.Println(a,b)
		//fmt.Println(tmp)
	}
	fmt.Println(ans)
}