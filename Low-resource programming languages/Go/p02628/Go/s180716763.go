package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	ps := make([]int, n)
	for i := range ps {
		sc.Scan()
		ps[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Sort(sort.IntSlice(ps))
	var sum int
	for i := 0; i < k; i++ {
		sum += ps[i]
	}
	fmt.Println(sum)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
