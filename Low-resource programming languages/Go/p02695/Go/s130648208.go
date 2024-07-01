package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	M := nextInt()
	Q := nextInt()

	a := make([]int, Q)
	b := make([]int, Q)
	c := make([]int, Q)
	d := make([]int, Q)

	for i := 0; i < Q; i++ {
		a[i] = nextInt() - 1
		b[i] = nextInt() - 1
		c[i] = nextInt()
		d[i] = nextInt()
	}
	candidates := increasing(M, N)

	ans := 0

	for j := 0; j < len(candidates); j++ {
		A := candidates[j]
		// printarr(A)
		s := 0
		for i := 0; i < Q; i++ {
			if A[b[i]]-A[a[i]] == c[i] {
				s += d[i]
			}
		}
		ans = max(ans, s)
	}

	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// 1からnまでのm項からなる単調増加列
func increasing(n, m int) [][]int {
	return increasing1(0, 0, n, m, []int{})
}

//
func increasing1(n, m, N, M int, arr []int) [][]int {
	if n == N && m == M {
		ret := []int{}
		s := 0
		for i := 0; i < len(arr); i++ {
			if arr[i] == 1 {
				s++
			} else {
				ret = append(ret, s)
			}
		}
		return [][]int{ret}
	}
	ret := [][]int{}
	if n < N {
		arr1 := append([]int{}, arr...)
		arr1 = append(arr1, 1)
		ret = append(ret, increasing1(n+1, m, N, M, arr1)...)
	}
	if n != 0 && m < M {
		arr0 := append([]int{}, arr...)
		arr0 = append(arr0, 0)
		ret = append(ret, increasing1(n, m+1, N, M, arr0)...)
	}
	return ret
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}
