package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	ans := 0
	for i := range a {
		for a[i]%2 == 0 {
			ans++
			a[i] /= 2
		}
	}
	fmt.Println(ans)
}
