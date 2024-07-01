package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 10000000
)

var (
	sc = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func pow(a, n int) int {
	ans := 1
	for i := 0; i < n; i++ {
		ans *= a
	}
	return ans
}

func main() {
	n, m, x := nextInt(), nextInt(), nextInt()
	a := make([][]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		c[i] = nextInt()
		a[i] = make([]int, m)
		for j := 0; j < m; j++ {
			a[i][j] = nextInt()
		}
	}

	min := math.MaxInt64
	for k := 1; k <= pow(2, n); k++ {
		cost := 0
		points := make([]int, m)
		cnt := make(map[int]bool)
		for i := 0; i < n; i++ {
			mask := 1 << uint(i)
			if k&mask != 0 {
				cost += c[i]
				for j := range points {
					points[j] += a[i][j]
					if !cnt[j] && points[j] >= x {
						cnt[j] = true
						if len(cnt) == m && cost < min {
							min = cost
						}
					}
				}
			}
		}
	}
	if min == math.MaxInt64 {
		fmt.Println(-1)
	} else {
		fmt.Println(min)
	}
}
