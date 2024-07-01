package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	fmt.Println(solve("0", n))
}

func num753(s string) bool {
	seven := false
	five := false
	three := false
	for _, n := range s {
		switch n {
		case '7':
			seven = true
		case '5':
			five = true
		case '3':
			three = true
		}
	}
	return seven && five && three
}

func solve(s string, n int) int {
	intS, _ := strconv.Atoi(s)
	if intS > n {
		return 0
	}

	res := 0
	if num753(s) {
		res = 1
	}
	for _, c := range []string{"7", "5", "3"} {
		res += solve(s+c, n)
	}

	return res
}