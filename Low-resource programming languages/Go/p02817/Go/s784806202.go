package main

import (
	"fmt"
)

func solution(s, t string) string {
	return fmt.Sprint(t, s)
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	fmt.Println(solution(s, t))
}
