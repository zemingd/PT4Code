package main

import "fmt"

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	a := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&a[i])
	}
	sum := 0
	for _, x := range a {
		sum += x
	}
	if sum > n {
		fmt.Println("-1")
	} else {
		fmt.Println(n - sum)
	}
}