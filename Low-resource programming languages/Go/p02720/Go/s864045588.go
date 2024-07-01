package main

// ABC161D - Lunlun Number (解説PDF実装)
// https://atcoder.jp/contests/abc161/tasks/abc161_d

import "fmt"

type container struct {
	data []int
}

func (c *container) queue(v int) {
	c.data = append(c.data, v)
}
func (c *container) dequeue(v *int) bool {
	if len(c.data) == 0 {
		return false
	}
	*v = c.data[0]
	c.data = c.data[1:]
	return true
}

func main() {
	var K int
	fmt.Scan(&K)
	var q container
	for i := 1; i < 10; i++ {
		q.queue(i) // 1~9をqueueにいれる
	}
	var v int
	ans := make([]int, 0)
	for q.dequeue(&v) {
		ans = append(ans, v)
		for i := 0; i < 10; i++ {
			if abs(v%10-i) <= 1 {
				q.queue(v*10 + i)
			}
		}
		if len(ans) >= K {
			break
		}
	}
	fmt.Println(ans[K-1])
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}
