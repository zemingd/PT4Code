package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func main() {
	defer write.Flush()

	var n, m int
	fmt.Fscan(read, &n, &m)

	s := make([]int, m)
	c := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Fscan(read, &s[i], &c[i])
	}

	po := make([]int, n+1)
	po[0] = int(math.Pow10(n))
	for i := 1; i <= n; i++ {
		po[i] = po[i-1] / 10
	}

	l := int(math.Pow10(n - 1))
	r := int(math.Pow10(n))
	ans := -1
	for i := l; i < r; i++ {
		chk := true
		for j := 0; j < m; j++ {
			if (i%(po[s[j]-1]))/po[s[j]] != c[j] {
				chk = false
				break
			}
		}
		if chk {
			ans = i
			break
		}
	}
	fmt.Fprintln(write, ans)
}
