package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	var ans = ((a * 3) + b) / 2
	fmt.Println(ans)
}