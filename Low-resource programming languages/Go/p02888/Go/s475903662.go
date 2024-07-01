package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func max(lhs, rhs int) int {
	if lhs < rhs {
		return rhs
	}
	return lhs
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var a []int
	for i := 0; i < n; i++ {
		a = append(a, nextInt())
	}
	sort.Ints(a)

	var ans int
	for i := 0; i < n-2; i++ {
		for j := i + 1; j < n-1; j++ {
			u := a[i] + a[j]
			k := sort.SearchInts(a, u)
			ans += k - j - 1
		}
	}
	fmt.Println(ans)
}
