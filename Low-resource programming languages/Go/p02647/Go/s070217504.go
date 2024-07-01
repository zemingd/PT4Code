package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	defer w.Flush()

	N, K := nextInt(), nextInt()
	As := nextInts(N)
	ans := solve(As, K)
	for i := 0; i < N; i++ {
		Printf("%d ", ans[i])
	}
	Println()
}

func solve(As []int, K int) []int {
	N := len(As)

	if K >= N {
		for i := 0; i < N; i++ {
			As[i] = N
		}
		return As
	}

	for k := 0; k < K; k++ {
		filled := true
		for i := 0; i < N; i++ {
			if As[i] != N {
				filled = false
				break
			}
		}
		if filled {
			return As
		}

		Bs := make([]int, N)
		for i := 0; i < N; i++ {
			for j := i - As[i]; j <= i+As[i]; j++ {
				if j >= 0 && j < N {
					Bs[j]++
				}
			}
		}
		As = Bs
	}
	return As
}

var w = bufio.NewWriter(os.Stdout)

func Printf(format string, a ...interface{}) {
	fmt.Fprintf(w, format, a...)
}

func Println(a ...interface{}) {
	fmt.Fprintln(w, a...)
}

func Dup(xs []int) []int {
	copied := make([]int, len(xs))
	copy(copied, xs)
	return copied
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer(make([]byte, 256), 1e9)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
