package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	answer := countPairs(s)
	fmt.Println(answer)
}

func countPairs(s string) int {
	if len(s) < 5 {
		return 0
	}
	count := 0
	for i := 0; i < len(s)-4; i++ {
		for j := i + 5; j <= len(s); {
			num, _ := strconv.Atoi(s[i:j])
			remainder := num % 2019
			if remainder == 0 {
				count++
				j += 5
			} else {
				tmp := digit(remainder)
				// fmt.Println(remainder, tmp)
				j += 5 - tmp
			}
		}
	}
	return count
}

func digit(n int) int {
	cnt := 1
	for n := n / 10; n > 0; n = n / 10 {
		cnt++
	}
	return cnt
}
