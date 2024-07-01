package main

import (
	"fmt"
)

func main() {
	var d, n int
	fmt.Scan(&d, &n)

	if d == 0 {
		if n != 100 {
			fmt.Println(n)
		} else {
			fmt.Println(n + 1)
		}
	} else if d == 1 {
		if n != 100 {
			fmt.Println(n * 100)
		} else {
			fmt.Println(n*100 + 100)
		}
	} else if d == 2 {
		if n != 100 {
			fmt.Println(n * 10000)
		} else {
			fmt.Println(n*10000 + 10000)
		}
	}
}
