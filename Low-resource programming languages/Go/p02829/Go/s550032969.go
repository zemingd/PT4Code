package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	switch A * B {
	case 2:
		fmt.Println("3")
	case 3:
		fmt.Println("2")
	case 6:
		fmt.Println("1")
	}
}
