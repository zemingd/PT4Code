package main

import "fmt"

func main() {
	fmt.Println(calc(4, 12))
	fmt.Println(calc(8, 20))
  	fmt.Println(calc(1, 1))
}

func calc(a int, b int) (result int) {
	if b%a == 0 {
		result = a + b
	} else {
		result = b - a
	}
	return
}
