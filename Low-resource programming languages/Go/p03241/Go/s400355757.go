package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	ans := 1
	for i := 2; i*n <= m && i*i <= m; i++ {
		if m%i == 0 {
			ans = i
		}
	}
	fmt.Println(ans)
}
