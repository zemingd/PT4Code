package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	coin := 0
	if a > b {
		coin += a
		a--
	} else {
		coin += b
		b--
	}
	if a > b {
		coin += a
	} else {
		coin += b
	}
	fmt.Println(coin)
}