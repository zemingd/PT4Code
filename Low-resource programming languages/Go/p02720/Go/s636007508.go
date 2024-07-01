package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scan(&k)

	a := []int64{1, 2, 3, 4, 5, 6, 7, 8, 9}

	for i := 0; i < k; i++ {
		m := a[i] % 10
		if m >= 1 {
			a = append(a, a[i] * 10 + m - 1)
		}
		a = append(a, a[i] * 10 + m)
		if m <= 8 {
			a = append(a, a[i] * 10 + m + 1)
		}
	}
	fmt.Println(a[k - 1])
}