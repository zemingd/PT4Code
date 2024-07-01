package main

import "fmt"

func main() {
	var n, cnt int
	fmt.Scan(&n)

	for i := 1; i <= n; i++ {
		cnt += i
	}
	fmt.Println(cnt)
}
