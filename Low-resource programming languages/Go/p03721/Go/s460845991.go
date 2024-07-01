package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

type number struct{ a, b int }
type numbers []number

func (n numbers) Len() int           { return len(n) }
func (n numbers) Swap(i, j int)      { n[i], n[j] = n[j], n[i] }
func (n numbers) Less(i, j int) bool { return n[i].a < n[j].a }

func main() {
	r := bufio.NewReader(os.Stdin)
	var n int
	var k int
	fmt.Fscan(r, &n)
	fmt.Fscan(r, &k)
	nums := numbers(make([]number, n))
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &nums[i].a)
		fmt.Fscan(r, &nums[i].b)
	}

	sort.Sort(nums)
	ans := 0
	for i := 0; i < n; i++ {
		if nums[i].b >= k {
			ans = nums[i].a
			break
		}
		k -= nums[i].b
	}

	fmt.Println(ans)
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
