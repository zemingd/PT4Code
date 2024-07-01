package main

import (
	"bufio"
	"fmt"
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

func main() {
	k, n := nextInt(), nextInt()
	a := make([]int, n+1)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	a[n] = k + a[0]

	max := -1
	sum := 0
	for i := 1; i <= n; i++ {
		dist := a[i] - a[i-1]
		sum += dist
		if dist > max {
			max = dist
		}
	}
	fmt.Println(sum - max)
}
