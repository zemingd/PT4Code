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
	n := nextInt()
	a := make([]int, n)
	diffs := make(map[int][]int)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
		diffs[a[i]-i] = append(diffs[a[i]-i], i)
	}

	ans := 0
	for i := 0; i < n; i++ {
		diff := -a[i] - i
		ans += len(diffs[diff])
	}
	fmt.Println(ans)
}
