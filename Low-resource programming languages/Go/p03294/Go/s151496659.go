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
	for _, v := range a {
		ans += v - 1
	}
	fmt.Println(ans)
}
