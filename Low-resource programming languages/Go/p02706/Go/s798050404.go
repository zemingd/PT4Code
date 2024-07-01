package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	for i := 0; i < m; i++ {
		var a int
		fmt.Scan(&a)
		n -= a
	}
	if n >= 0 {
		fmt.Println(n)
	} else {
		fmt.Println(-1)
	}
}
