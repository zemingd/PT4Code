package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	sum := 0
	for i := 0; i < m; i++ {
		var a int
		fmt.Scan(&a)
		sum = sum + a
	}

	if sum <= n {
		fmt.Println(n - sum)
	} else {
		fmt.Println("-1")
	}
}
