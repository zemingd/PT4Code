package main

import "fmt"

var s string

func main() {
	fmt.Scanf("%s", &s)
	fmt.Println(solve(0, ""))
}

func solve(start int, last string) int {
	best := 0
	for end := start + 1; end <= len(s); end++ {
		if s[start:end] == last {
			continue
		}
		n := solve(end, s[start:end]) + 1
		if n > best {
			best = n
		}
	}
	return best
}
