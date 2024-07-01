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
	for i := 1; i < n-1; i++ {
		if a[i-1] < a[i] && a[i] < a[i+1] {
			ans++
		} else if a[i-1] > a[i] && a[i] > a[i+1] {
			ans++
		}
	}
	fmt.Println(ans)
}
