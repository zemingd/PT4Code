package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	if a % 2 == 0 {
		fmt.Println(a/2)
		return
	}
	fmt.Println(a/2 + 1)
}