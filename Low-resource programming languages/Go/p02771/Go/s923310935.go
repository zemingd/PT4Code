package main

import (
	"fmt"
)

func main() {
	words := make([]int, 3)
	fmt.Scan(&words[0], &words[1], &words[2])

	answer := "No"
	if words[0] == words[1] && words[0] != words[2] {
		answer = "Yes"
	} else if words[0] == words[2] && words[0] != words[1] {
		answer = "Yes"
	} else if words[1] == words[2] && words[0] != words[1] {
		answer = "Yes"
	}

	fmt.Println(answer)
}
