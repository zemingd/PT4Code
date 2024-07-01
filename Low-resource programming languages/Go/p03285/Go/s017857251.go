package main

import (
	"fmt"
	"strconv"
)

func main() {
	var input string
	fmt.Scanf("%s", &input)
	N, _ := strconv.Atoi(input)
	for i := 0; i <= N/4; i++ {
		for j := 0; j <= N/7; j++ {
			if N == i*4+j*7 {
				println("Yes")
				return
			}
		}
	}
	println("No")
}
