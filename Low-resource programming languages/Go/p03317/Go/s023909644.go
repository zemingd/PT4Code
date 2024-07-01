package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	v := (n - 1) / (k - 1)
	if (n-1)%(k-1) > 0 {
		v++
	}
	fmt.Println(v)
}
