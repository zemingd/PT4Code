package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	n %= 1000
	if n == 0 {
		fmt.Println(0)
	} else {
		fmt.Println(1000 - n)
	}
}
