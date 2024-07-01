package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)

	if solve(s) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func solve(s string) bool {
	sum := 0

	for _, c := range s {
		sum += int(c - '0')
	}

	return sum%9 == 0
}
