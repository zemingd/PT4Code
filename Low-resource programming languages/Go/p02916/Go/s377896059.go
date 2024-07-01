package main

import (
	"fmt"
)

func main() {
	var n, mochi int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make(map[int]int)
	c := make(map[int]int)
	for i := 0; i < n; i++ {
		fmt.Scan(&mochi)
		a[i] = mochi
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&mochi)
		b[i] = mochi
	}
	for i := 0; i < n-1; i++ {
		fmt.Scan(&mochi)
		c[i] = mochi
	}
	gokei := 0
	for i, v := range a {
		gokei += b[v-1]
		if i > 0 {
			if a[i]-a[i-1] == 1 {
				gokei += c[a[i-1]-1]
			}
		}
	}
	fmt.Println(gokei)
}
