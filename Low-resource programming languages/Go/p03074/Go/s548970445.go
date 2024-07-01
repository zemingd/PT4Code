package main

import (
	"fmt"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)

	block := make([]int, 0, n)
	cnt := 0
	cur := 1
	for _, c := range s {
		if c == rune(cur)+'0' {
			cnt++
		} else {
			block = append(block, cnt)
			cur = 1 - cur
			cnt = 1
		}
	}
	if cnt > 0 {
		block = append(block, cnt)
	}
	if len(block)%2 > 0 {
		block = append(block, 0)
	}

	sum := make([]int, len(block)+1)
	sum[0] = 0
	for i := 0; i < len(block); i++ {
		sum[i+1] = sum[i] + block[i]
	}

	ans := 0
	length := 2*k + 1
	for i := 0; i < len(block); i += 2 {
		left := i
		right := min(i+length, len(block))
		ans = max(ans, sum[right]-sum[left])
	}
	fmt.Println(ans)
}
