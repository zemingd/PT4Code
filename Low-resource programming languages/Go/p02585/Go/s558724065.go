package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	sc = bufio.NewReader(os.Stdin)
)

func main() {
	N, K := scanInt(), scanInt()
	P := make([]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		P[i] = scanInt()
	}
	for i := 0; i < N; i++ {
		C[i] = scanInt()
	}

	ans := -1000000001
	for i := 0; i < N; i++ {
		v := i
		cycleSum := 0
		cycleNum := 0
		for {
			cycleNum++
			cycleSum += C[v]
			v = P[v] - 1
			if v == i {
				break
			}
		}

		if cycleNum < K {
			s := 0
			v = i
			for i := 0; i < K; i++ {
				s += C[v]
				ans = max(ans, s)
				v = P[v] - 1
			}
		} else {
			if cycleSum < 0 {
				s := 0
				v = i
				for i := 0; i < K; i++ {
					s += C[v]
					ans = max(ans, s)
					v = P[v] - 1
				}
			} else {
				n := K / cycleNum
				s := n * cycleSum
				v = i
				for i := n * cycleNum; i < K; i++ {
					s += C[v]
					ans = max(ans, s)
					v = P[v] - 1
				}
			}
		}
	}
	fmt.Println(ans)
}

func max(a ...int) int {
	m := a[0]
	for _, b := range a {
		if m < b {
			m = b
		}
	}
	return m
}
func min(a ...int) int {
	m := a[0]
	for _, b := range a {
		if m > b {
			m = b
		}
	}
	return m
}
func abs(a int) int         { return int(math.Abs(float64(a))) }
func scan(a ...interface{}) { _, err := fmt.Fscan(sc, a...); pnc(err) }
func scanStr() (s string)   { scan(&s); return }
func scanInt() int          { i, err := strconv.Atoi(scanStr()); pnc(err); return i }
func scanFloat() float64    { f, err := strconv.ParseFloat(scanStr(), 64); pnc(err); return f }
func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
