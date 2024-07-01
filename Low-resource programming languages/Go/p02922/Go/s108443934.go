package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	cnt := 1
	sum := a
	for sum < b {
		cnt++
		sum += a - 1
	}

	fmt.Println(cnt)
}
