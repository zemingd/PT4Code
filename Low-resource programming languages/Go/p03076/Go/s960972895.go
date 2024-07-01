package main

import (
	"fmt"
)

func main() {
	var tmp int
	input := make([]int, 5)
	for i := 0; i < 5; i++ {
		fmt.Scan(&tmp)
		input[i] = tmp
	}

	var subMaxIndex int
	subValue := 0
	for i := 0; i < 5; i++ {
		tmp = 10 - input[i]%10
		if tmp > subValue && tmp != 10 {
			subValue = tmp
			subMaxIndex = i
		}
	}

	output := 0
	for i := 0; i < 5; i++ {
		if subMaxIndex == i || input[i]%10 == 0 {
			output += input[i]
		} else {
			output += (10 - input[i]%10) + input[i]
		}
	}
	fmt.Println(output)
}
