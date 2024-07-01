package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	var n, h int
	fmt.Scan(&n, &h)
	var a, amax int
	b := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ = strconv.Atoi(sc.Text())
		amax = max(amax, a)
		sc.Scan()
		b[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	ans := 0
	for _, e := range b {
		if amax < e {
			h -= e
			ans++
			if h <= 0 {
				break
			}
		}
	}
	if h > 0 {
		ans += (h + amax - 1) / amax
	}
	fmt.Println(ans)
}
