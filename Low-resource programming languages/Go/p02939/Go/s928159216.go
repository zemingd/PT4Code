package main

import "fmt"

var s string

func main() {
	fmt.Scanf("%s", &s)
	fmt.Println(solve(0, ""))
}

var memo = map[int]map[string]int{}

func solve(start int, last string) int {
	if memo[start] == nil {
		memo[start] = map[string]int{}
	}
	if n, ok := memo[start][last]; ok {
		return n
	}

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
	memo[start][last] = best
	return best
}
