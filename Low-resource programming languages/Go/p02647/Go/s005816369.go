package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N, K := nextInt(), nextInt()
	As := nextInts(N)
	ans := solve(As, K)
	for i := 0; i < N; i++ {
		fmt.Printf("%d ", ans[i])
	}
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
		Bs := make([]int, N+1)
		for i := 0; i < N; i++ {
			l := Max(0, i-As[i])
			r := Min(N, i+As[i]+1)
			Bs[l]++
			Bs[r]--
		}
		filled := true
		for i := 0; i < N; i++ {
			Bs[i+1] += Bs[i]
			if Bs[i] != N {
				filled = false
			}
		}
		Bs = Bs[:N]
		if filled {
			return Bs
		}
		As = Bs
	}
	return As
}

func Max(xs ...int) int {
	max := xs[0]
	for _, x := range xs[1:] {
		if max < x {
			max = x
		}
	}
	return max
}
func Min(xs ...int) int {
	min := xs[0]
	for _, x := range xs[1:] {
		if min > x {
			min = x
		}
	}
	return min
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
