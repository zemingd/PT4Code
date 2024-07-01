package main

import "fmt"

func main() {
	var A, B, T int
	fmt.Scan(&A, &B, &T)
	ans := T / A * B
	fmt.Println(ans)
}
