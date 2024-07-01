package main

import (
	"fmt"
)

func main() {
	var N int
	var buf int
	fmt.Scan(&N)
	cont := map[int]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&buf)
		if _, ok := cont[buf]; ok {
			delete(cont, buf)
		} else {
			cont[buf] = 1
		}
	}
	fmt.Println(len(cont))
}
