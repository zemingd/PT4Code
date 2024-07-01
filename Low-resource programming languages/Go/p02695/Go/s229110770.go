package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

var sc = newScanner()

func main() {
	n, m, q := scanInt(), scanInt(), scanInt()
	a := make([][]int, 4)
	for i := 0; i < 4; i++ {
		a[i] = make([]int, q)
	}
	for i := 0; i < q; i++ {
		for j := 0; j < 4; j++ {
			a[j][i] = scanInt()
		}
	}

	f := func(arr []int) int {
		ret := 0
		for i := 0; i < q; i++ {
			if arr[a[1][i]]-arr[a[0][i]] == a[2][i] {
				ret += a[3][i]
			}
		}
		return ret
	}

	var dfs func(i, x int, arr []int) int
	dfs = func(k, x int, arr []int) int {
		if k > n {
			return f(arr)
		}
		var ret int
		for i := x; i <= m; i++ {
			arr = append(arr[0:k], i)
			r := dfs(k+1, i, arr)
			if ret < r {
				ret = r
			}
		}
		return ret
	}

	arr := make([]int, 0, n+1)
	ans := dfs(0, 1, arr)
	fmt.Println(ans)
}
