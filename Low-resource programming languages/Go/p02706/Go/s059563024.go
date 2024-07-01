package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	sum := 0
	var a int
	for i := 0; i < m; i++ {
		fmt.Scan(&a)
		sum += a
	}
	if n < sum {
		fmt.Println(-1)
		return
	}

	fmt.Println(n - sum)
}
