package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	socket := 1
	tap_num := 0
	for socket < b {
		socket--
		socket += a
		tap_num++
	}

	fmt.Println(tap_num)

}
