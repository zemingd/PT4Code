package main

import (
	"fmt"
	"os"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)

	num := make([]int, n)
	for i := range num {
		num[i] = -1
	}
	if n > 1 {
		num[0] = 1
	}
	var s, c int
	duplicatedDefinition := false
	zeroSpecifiedAt := 99
	for i := 0; i < m; i++ {
		fmt.Scanf("%d %d", &s, &c)
		if num[s-1] != -1 && num[s-1] != c {
			duplicatedDefinition = true
		}
		num[s-1] = c
		if c == 0 && zeroSpecifiedAt > s {
			zeroSpecifiedAt = s
		}
	}
	if duplicatedDefinition {
		fmt.Println(-1)
		os.Exit(0)
	}
	if zeroSpecifiedAt == 0 && n == 1 {
		fmt.Println(0)
		return
	} else if zeroSpecifiedAt == 0 {
		fmt.Println(-1)
		return
	}

	answer := ""
	for _, val := range num {
		if val == -1 {
			val = 0
		}
		answer += fmt.Sprintf("%d", val)
	}

	fmt.Println(answer)

}

func countDigit(n int64) int {
	cnt := 1
	for n/10 > 0 {
		n = n / 10
		cnt++
	}
	return cnt
}
