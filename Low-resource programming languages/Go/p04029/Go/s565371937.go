package main

import "fmt"

func main() {
	var n int

	fmt.Scan(&n)

	candy := 0
	for i := 0; i <= n; i++ {

		candy += i
	}
	fmt.Println(candy)

}
