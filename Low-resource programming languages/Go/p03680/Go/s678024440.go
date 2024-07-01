package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	buttons := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&buttons[i])
	}
	zeroIndex := buttons[0] - 1
	next := buttons[0] - 1
	count := 1
	for next != 1 {
		prev := next
		next = buttons[next] - 1
		count++
		if next == zeroIndex || prev == next {
			break
		}
	}
	if next == 1 {
		fmt.Println(count)
	} else {
		fmt.Println(-1)
	}
}
