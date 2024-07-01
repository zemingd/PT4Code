package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	buttons := make([]int, N)
	for i := range buttons {
		var a int
		fmt.Scan(&a)
		buttons[i] = a - 1
	}

	count := -1
	rightButtonIndex := 0
	for i := 0; i < N; i++ {
		rightButtonIndex = buttons[rightButtonIndex]
		if rightButtonIndex == 1 {
			count = i + 1
			break
		}
	}

	fmt.Println(count)
}
