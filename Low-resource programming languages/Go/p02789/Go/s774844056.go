package main

import "fmt"

func main() {
	var n, m int
	_, _ = fmt.Scan(&n)
	_, _ = fmt.Scan(&m)
	if n == m {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}