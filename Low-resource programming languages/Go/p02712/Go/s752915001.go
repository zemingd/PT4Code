package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	var sum uint32
	var i int
	for i = 0; i < N; i++ {
		if i % 3 != 0 && i % 5 != 0 {
			// fmt.Println(int(sum))
			sum += uint32(i)
		}
	}
	// fmt.Println("sum:")
	fmt.Println(int(sum))

}