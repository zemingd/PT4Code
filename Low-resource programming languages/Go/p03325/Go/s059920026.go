package main

import (
	"fmt"
)

func checkHowManyDivideByTwo(val int) int {
	counter := 0
	for val%2 == 0 {
		val /= 2
		counter++
	}
	return counter
}

func main() {
	var (
		N   int
		val int
		sum int
	)
	fmt.Scan(&N)

	for i := 0; i < N; i++ {
		fmt.Scan(&val)
		sum += checkHowManyDivideByTwo(val)
	}

	fmt.Println(sum)
}
