package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	h := (b - a + 1) / 2

	if k <= h {
		for i := a; i < a+k; i++ {
			fmt.Println(i)
		}
		for i := b - k + 1; i <= b; i++ {
			fmt.Println(i)
		}
	} else { // h < k
		for i := a; i <= b; i++ {
			fmt.Println(i)
		}
	}
}
