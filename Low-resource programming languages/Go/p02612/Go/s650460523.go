package main

import "fmt"

func main() {
	var res, n int
	fmt.Scanf("%d", &n)
	a := n / 1000 * 1000
	res = n - a
	if res == 0 {
		fmt.Println(0)
	} else {
		fmt.Println(1000 - res)
	}
}
