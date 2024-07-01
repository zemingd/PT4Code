package main

import (
	"fmt"
)

func solution(n, r int) int {
	if n >= 10 {
		return r
	}
	return r + 100*(10-n)
}

func main() {
	var n, r int
	fmt.Scan(&n, &r)
	fmt.Println(solution(n, r))
}
