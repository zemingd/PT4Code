package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ans := 1
	digit := 1
	for i := 1; i < n; i++ {
		n = n - (k-1)*digit
		if n > 0 {
			ans++
			digit = digit * k
		} else {
			break
		}
	}
	fmt.Println(ans)

}
