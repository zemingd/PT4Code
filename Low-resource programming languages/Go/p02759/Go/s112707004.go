package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)

	if a == 1 {
		fmt.Println(1)
		return
	}
	fmt.Println(a/2)
}