package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	var n, m int
	n, m = nextInt(), nextInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	b := make([]int, m)
	c := make([]int, m)
	for i := 0; i < m; i++ {
		b[i], c[i] = nextInt(), nextInt()
	}

	for i := 0; i < m; i++ {
		sort.Ints(a)
		ai := n
		for j := 0; j < n; j++ {
			if a[j] >= c[i] {
				ai = j
				break
			}
		}
		ai = min(b[i], ai)
		for j := 0; j < ai; j++ {
			a[j] = c[i]
		}
	}
	sum := 0
	for _, v := range a {
		sum += v
	}
	fmt.Println(sum)
}
