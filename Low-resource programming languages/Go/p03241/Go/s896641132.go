package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	if n == 1 {
		fmt.Println(m)
		return
	}

	ans := 1
	for i := 2; i*n <= m && i*i <= m; i++ {
		if m%i == 0 {
			ans = i
		}
	}
	fmt.Println(ans)
}
