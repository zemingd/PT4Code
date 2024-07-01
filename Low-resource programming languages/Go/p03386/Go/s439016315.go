package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	if 2*k - 1 <= b - a {
		for i := 0; i < k; i++ {
			fmt.Println(a + i)
		}
		for i := k-1; i >= 0; i-- {
			fmt.Println(b - i)
		}
	} else {
		for i := 0; i < b-a+1; i++ {
			fmt.Println(a + i)
		}
	}
}