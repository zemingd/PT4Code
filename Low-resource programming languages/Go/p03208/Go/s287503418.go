package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	h := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range h {
		sc.Scan()
		h[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Ints(h)
	ans, diff := 10000000000, 0
	for i := 0; i+k-1 < n; i++ {
		diff = h[i+k-1] - h[i]
		ans = min(ans, diff)
	}
	fmt.Println(ans)
}
