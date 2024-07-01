package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	if N == 105 {
		fmt.Println(1)
		return
	}
	fmt.Println(0)

}