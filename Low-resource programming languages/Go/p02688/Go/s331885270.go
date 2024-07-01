package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	d := make([]int, n)
	a := make(map[int][]int, n)

	sunu := make([]int, n)
	for i := 0; i < k; i++ {
		fmt.Scan(&d[i])
		aa := make([]int, d[i])
		for j := 0; j < d[i]; j++ {
			fmt.Scan(&aa[j])
			sunu[aa[j]-1]++
		}
		a[i] = aa
	}

	ans := 0
	for _, v := range sunu {
		if v == 0 {
			ans++
		}
	}
	fmt.Println(ans)
}