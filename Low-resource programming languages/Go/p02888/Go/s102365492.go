package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	l := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range l {
		sc.Scan()
		l[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Ints(l)
	// fmt.Println("n", n, "l", l)
	ans := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			for k := j + 1; k < n; k++ {
				// fmt.Printf("(%d,%d,%d) => (%d,%d,%d)\n", i, j, k, l[i], l[j], l[k])
				maxl := max(l[i], max(l[j], l[k]))
				// minl := min(l[i], min(l[j], l[k]))
				if 2*maxl < l[i]+l[j]+l[k] {
					ans++
				}
			}
		}
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
