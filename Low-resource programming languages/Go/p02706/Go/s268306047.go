package main

import "fmt"

func main() {
	var n, m int
	var a []int
	fmt.Scan(&n, &m)
	for i := 0; i < m; i++ {
		var tmp int
		fmt.Scan(&tmp)
		a = append(a, tmp)
	}

	sum := 0
	for i := 0; i < m; i++ {
		sum += a[i]
	}

	if n >= sum {
		fmt.Println(n - sum)
	} else {
		fmt.Println(-1)
	}
}
