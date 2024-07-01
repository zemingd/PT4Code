package main

import "fmt"

func main() {
	var d, n int
	fmt.Scan(&d, &n)

	if d == 0 {
		if n == 100 {
			fmt.Println(n + 1)
		} else {
			fmt.Println(n)
		}
	} else if d == 1 {
		fmt.Println(n * 100)
	} else if d == 2 {
		fmt.Println(n * 10000)
	}
}
