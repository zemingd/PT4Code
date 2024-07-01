package main

import "fmt"

func main() {
	var n int
	var r int
	fmt.Scan(&n, &r)

	if n >= 10 {
		fmt.Println(r)
		return
	} else {
		var p = 100 * (10 - n)
		fmt.Println(r + p)
	}
}
