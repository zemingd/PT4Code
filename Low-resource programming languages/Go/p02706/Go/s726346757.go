package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	var sum, a int
	for i := 0; i < m; i++ {
		fmt.Scan(&a)
		sum = sum + a
	}

	if sum <= n {
		fmt.Println(n - sum)
	} else {
		fmt.Println("-1")
	}
}
