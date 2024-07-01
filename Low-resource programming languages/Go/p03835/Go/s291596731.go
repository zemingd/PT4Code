package main

import (
	"fmt"
)

func main() {
	var K int
	var S int
	fmt.Scan(&K)
	fmt.Scan(&S)

	var counter int
	counter = 0
	for i := 0; i <= K; i++ {
		for j := 0; j <= K; j++ {
			for k := 0; k <= K; k++ {
				if i+j+k == S {
					counter++
				}
			}
		}
	}
	fmt.Println(counter)
}
