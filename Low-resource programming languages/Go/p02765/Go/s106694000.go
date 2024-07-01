package main

import "fmt"

func main() {
	var n, r int
	fmt.Scan(&n, &r)

	res := 0
	if n < 10 {
		res = r + (100 * (10 - n))
	} else {
		res = r
	}

	fmt.Println(res)
}
