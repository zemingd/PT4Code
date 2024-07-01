package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
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

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func lowerBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] >= x
	})
	return idx
}

func upperBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] > x
	})
	return idx
}

func f(n, N int, a [][]int) {
	for i := 0; i < N; i++ {
		f := max(0, i-a[n-1][i])
		t := min(N, i+a[n-1][i]+1)
		a[n][f]++
		a[n][t]--
	}
	for i := 1; i <= N; i++ {
		a[n][i] += a[n][i-1]
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	N, K := getInt(), getInt()
	a := make([][]int, 19)
	for i := 0; i < 19; i++ {
		a[i] = make([]int, N+1)
	}
	for i := 0; i < N; i++ {
		a[0][i] = getInt()
	}
	// out(1, a[0])
	cnt := 1
	for i := 1; i < 19; i++ {
		f(i, N, a)
		// out(a[i], cnt)
		cnt *= 2
	}
	ans := make([]int, N)
	cnt = 1
	for K > 0 {
		if K%2 == 1 {
			for i := 0; i < N; i++ {
				ans[i] += a[cnt][i]
			}
		}
		cnt++
		K /= 2
	}
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()
	for i := 0; i < N; i++ {
		fmt.Fprint(w, ans[i], " ")
	}
	fmt.Fprintln(w)
}
