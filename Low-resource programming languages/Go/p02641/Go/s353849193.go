package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var X, N int
	fmt.Scanf("%d", &X)
	fmt.Scanf("%d", &N)

	P := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &P[i])
	}
	sort.Ints(P)

	var a int = -1
	if len(P) > 0 {
		for p := 0; p < 102; p++ {
			if math.Abs(float64(X) - float64(p)) < math.Abs(float64(X) - float64(a)) && !Contain(P, p) {
				a = p
			}
		}
	} else {
		a = X
	}
	fmt.Println(a)
}

func Contain(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

