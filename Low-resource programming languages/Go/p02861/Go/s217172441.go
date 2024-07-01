package main

import (
	"fmt"
	"math"
)

type zahyo struct {
	x float64
	y float64
}

func main() {
	var n int
	fmt.Scan(&n)
	list := make([]zahyo, n)
	for i :=0; i<n ; i++ {
		fmt.Scan(&list[i].x,&list[i].y)
	}
	cnt := 0.0

	chohuku := 2.0 * factorial(n-1)
	//N!通り全部の距離合計（あとでansでｎで割って平均値を算出）
	for i:=0; i<n-1; i++ {
		for j :=i+1; j<n; j++ {
			cnt += math.Sqrt(squa(list[i].x-list[j].x) + squa(list[i].y - list[j].y))*float64(chohuku)
		}
	}
	fmt.Println(cnt/(float64(factorial(n))))
}

func factorial(n int) int {
	return permutation(n, n - 1)
}
func permutation(n int, k int) int {
	v := 1
	if 0 < k && k <= n {
		for i := 0; i < k; i++ {
			v *= (n - i)
		}
	} else if k > n {
		v = 0
	}
	return v
}

func squa (a float64)float64 {
	return a*a
}