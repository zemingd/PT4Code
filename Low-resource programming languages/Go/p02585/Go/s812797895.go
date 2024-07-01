package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func newInt() int64 {
	sc.Scan()
	i, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return i
}

func main() {

	var n, k, ans int64
	sc.Split(bufio.ScanWords)
	n = newInt()
	k = newInt()
	p := make([]int64, n+1)
	c := make([]int64, n+1)

	var i, j int64
	for i = 1; i <= n; i++ {
		p[i] = newInt()
	}

	for i = 1; i <= n; i++ {
		c[i] = newInt()
	}

	for i = 1; i <= n; i++ {
		var score int64
		now := i
		for j = 0; j < k; j++ {
			now = p[now]
			score += c[now]
			if score > ans {
				ans = score
			}
		}
	}

	fmt.Println(ans)
}
