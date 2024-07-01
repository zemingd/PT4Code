package main

import "fmt"

func main() {
	var a string
	fmt.Scan(&a)
	if a >= "a" && a <= "z" {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}
