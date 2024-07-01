package main

import "fmt"

func main() {
	var n int
	fmt.Scanln(&n)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n-1)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < n-1; i++ {
		fmt.Scan(&c[i])
	}
	ans := 0
	ans += b[a[0]-1]
	for i := 1; i < n; i++ {
		ans += b[a[i]-1]
		if a[i]-a[i-1] == 1 {
			ans += c[a[i-1]-1]
		}
	}
	fmt.Println(ans)
}
