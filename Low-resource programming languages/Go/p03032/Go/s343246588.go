package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
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

func solve(n, k int, v []int) int {
	r := min(n, k)
	ans := 0
	for a := 0; a <= r; a++ {
		for b := 0; b <= r-a; b++ {
			selected := make([]int, 0, r)
			for i := 0; i < a; i++ {
				selected = append(selected, v[i])
			}
			for i := n - 1; i >= n-b; i-- {
				selected = append(selected, v[i])
			}

			sort.Ints(selected)
			limit := min(len(selected), k-(a+b))
			for i := 0; i < limit; i++ {
				if selected[i] >= 0 {
					break
				}
				selected[i] = 0
			}

			sum := 0
			for _, num := range selected {
				sum += num
			}
			ans = max(ans, sum)
		}
	}
	return ans
}

func main() {
	n, _ := strconv.Atoi(input())
	k, _ := strconv.Atoi(input())
	v := make([]int, n)
	for i := 0; i < n; i++ {
		v[i], _ = strconv.Atoi(input())
	}
	fmt.Println(solve(n, k, v))
}
