package main

import "fmt"

func main() {

	var h, a int
	var count int
	fmt.Scan(&h, &a)

	for h > 0 {
		h -= a
		count++
	}
	fmt.Println(count)
}
