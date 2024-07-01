package main

import "fmt"

func main() {
	var (
		input []int
		count int
	)

	input = make([]int, 3)

	for i := 0; i < len(input); i++ {
		fmt.Scan(&input[i])
	}

	for i := 0; i < len(input)-1; i++ {
		for j := i+1; j < len(input); j++ {
			if input[i] == input[j] {
				count++
			}
		}
	}

	if count == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
