package main

import "fmt"

func main() {
	var a,b int
	fmt.Println(calc(a, b))
}

func calc(a int, b int) (result int) {
	if b%a == 0 {
		result = a + b
	} else {
		result = b - a
	}
	return
}