package main

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r)
	fmt.Scan(&d)
	fmt.Scan(&x)

	now := x
	for index := 0; index < 10; index++ {
		tmp := now*r - d
		fmt.Println(tmp)
		now = tmp
	}
}
