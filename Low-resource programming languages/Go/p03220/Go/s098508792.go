package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var t,a float64
	fmt.Scan(&n,&t,&a)

	ansTmp := 100000.0
	ans := 0
	for i := 0; i < n; i++{
		var h float64
		fmt.Scan(&h)
		tmp := t - h * 0.006
		if ansTmp > math.Abs(a-tmp) {
			ansTmp = math.Abs(a-tmp)
			ans = i + 1
		}
	}
	fmt.Println(ans)
}