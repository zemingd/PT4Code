package main

import "fmt"

func main() {
	var s string

	fmt.Scan(&s)

	var stack = []byte{}

	var sum = 0
	for i := 0; i < len(s); i++ {
		if count(stack) == 0 {
			stack = push(stack, s[i])
			continue
		}

		if peek(stack) == s[i] {
			stack = push(stack, s[i])
			continue
		}

		sum += 2
		stack, _ = pop(stack)
	}

	fmt.Println(sum)
}

func push(s []byte, a byte) []byte {
	return append(s, a)
}

func pop(s []byte) ([]byte, byte) {
	if len(s) == 0 {
		panic("cant pop from empty stack")
	}

	return s[:len(s)-1], s[len(s)-1]
}

func peek(s []byte) byte {
	if len(s) == 0 {
		panic("cant peek from empty stack")
	}
	return s[len(s)-1]
}

func count(s []byte) int {
	return len(s)
}
