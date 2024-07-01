package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	var l int
	for i := 0; i < k; i++ {
		if a+i > b {
			break
		}
		fmt.Println(a + i)
		l = a + i
	}
	for i := 1; i <= k; i++ {
		if b-k+i <= l {
			continue
		}
		fmt.Println(b - k + i)
	}
}
