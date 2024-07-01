// ProblemURL : https://atcoder.jp/contests/agc039/tasks/agc039_a
// ---------------------------------------------
package main

import (
	"fmt"
	"strings"
)

func countAlphabet(s string) int {
	m := make(map[rune]int, 26)
	for _, ss := range s {
		m[ss]++
	}
	return len(m)
}

func calcCostNaive(s string) int {
	t := []byte(s)
	cost := 0
	for i := 1; i < len(t); i++ {
		if t[i-1] == t[i] {
			t[i] = '#'
			cost++
		}
	}
	return cost
}

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)

	if countAlphabet(s) == 1 {
		length := len(s) * k
		cost := length / 2
		fmt.Println(cost)
		return
	}

	if s[0] == s[len(s)-1] {
		t := string(s[0])
		ctHead := len(s) - len(strings.TrimLeft(s, t))
		ctTail := len(s) - len(strings.TrimRight(s, t))
		u := strings.Trim(s, t)
		cost := ctHead/2 + ctTail/2 + calcCostNaive(u)*k + (ctHead+ctTail)/2*(k-1)
		fmt.Println(cost)
	} else {
		cost := calcCostNaive(s)
		cost *= k
		fmt.Println(cost)
	}
}
