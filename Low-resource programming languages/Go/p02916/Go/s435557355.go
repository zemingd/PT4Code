package main

import "fmt"

func main() {
	var n, ans int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n-1)
	for i := range a {
		fmt.Scan(&a[i])
	}
	for i := range b {
		fmt.Scan(&b[i])
	}
	for i := range c {
		fmt.Scan(&c[i])
	}
	old := 100
	for i := 0; i < n; i++ {
		ans += b[a[i]-1]
		if a[i]-1 == old+1 {
			ans += c[old]
		}
		old = a[i] - 1
	}
	fmt.Println(ans)
}
