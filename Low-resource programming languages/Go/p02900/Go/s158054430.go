package main

import (
	"fmt"
)

func main() {
	var A, B int64
	fmt.Scanf("%d", &A)
	fmt.Scanf("%d", &B)

	a := make(map[int64]bool)
	b := make(map[int64]bool)
	soin(A,a)
	soin(B,b)

	ans := 1
	for k, _ := range a {
		if _, present := b[k]; present {
			ans++
		}
	}
	fmt.Println(ans)
}

func soin(n int64, ret map[int64]bool) {
	var i int64
	for i = 2; i <= n; i++ {
		if n % i == 0 {
			ret[i] = true
			soin(n/i, ret)
			break
		}
	}
}