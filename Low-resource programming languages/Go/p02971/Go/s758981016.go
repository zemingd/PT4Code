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
	a := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	sorted := make([]int, n)
	copy(sorted, a)
	sort.Sort(sort.Reverse(sort.IntSlice(sorted)))
	w := bufio.NewWriter(os.Stdout)
	for _, e := range a {
		ans := sorted[0]
		if e == ans {
			ans = sorted[1]
		}
		fmt.Fprintln(w, ans)
	}
	w.Flush()
}
