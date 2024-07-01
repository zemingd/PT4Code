package main

import (
	"fmt"
	"strconv"
)

func main() {
	n := make([]int, 2)
	for i := 0; i < 2; i++ {
		fmt.Scan(&n[i])
	}
	strA := strconv.Itoa(n[0])
	strB := strconv.Itoa(n[1])
	if n[0] > n[1] {
		createAnswer(strB, n[0])
	} else if n[0] == n[1] {
		createAnswer(strB, n[0])

	} else {
		createAnswer(strA, n[1])
	}
}

func createAnswer(word string, count int) {
	var answer string

	for i := 0; i < count; i++ {
		answer += word
	}
	fmt.Println(answer)
}
