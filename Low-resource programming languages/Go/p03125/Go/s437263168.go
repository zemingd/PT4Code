package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	calc(a, b)
}

func calc(a, b int) error {
	if b%a == 0 {
		fmt.Println(a + b)
	} else {
		fmt.Println(b - a)
	}
	return nil
}