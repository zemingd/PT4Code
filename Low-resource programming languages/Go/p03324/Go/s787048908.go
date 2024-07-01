package main

import "fmt"

func main() {
	var d, n int
	fmt.Scan(&d, &n)
	switch d {
	case 0:
		fmt.Printf("%d", n)
	case 1:
		fmt.Printf("%d", n*100)
	case 2:
		fmt.Printf("%d", n*10000)
	}
}
