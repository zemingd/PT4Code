package main

import (
	"fmt"
)

func main() {
	request := make([]int, 4)
	for i := 0; i < 4; i++ {
		fmt.Scanf("%d", &request[i])
	}
	size := request[3]

	result := linear(request[0], request[1], size)
	fmt.Printf("%d", result)
}

func linear(numA int, numB int, size int) int {
	sum := 0
	for i := 0; i < numA; i++ {
		sum += 1
	}
	remain := size - numA - numB
	if remain < 0 {
		return sum
	}
	for i := 0; i < remain; i++ {
		if sum <= 0 {
			break
		}
		sum -= 1
	}
	return sum
}