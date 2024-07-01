package main

import "fmt"

func main() {
	var a, b, x uint64
	fmt.Scan(&a, &b, &x)

	if a != 0 {
		fmt.Println(b/x - (a-1)/x)
		return
	}
	fmt.Println(b / x)
}
