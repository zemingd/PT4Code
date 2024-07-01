package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanInt64() int64 {
	sc.Scan()
	i, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return i
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func scanInts64(n int) []int64 {
	res := make([]int64, n)
	for i := range res {
		res[i] = scanInt64()
	}
	return res
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	n, k := scanInt(), scanInt()
	a := make([]int, n)
	for i := range a {
		a[i] = scanInt() - 1
	}
	fg := []int{a[0]}
	for i := 0; i < n*n+1000; i++ {
		fg = append(fg, a[fg[len(fg)-1]])
	}

	if k <= n {
		fmt.Println(fg[k-1])
	}

	loopEnd := n - 1
	loopStart := n - 2
	loopLen := 0
	for i := 0; i < n; i++ {
		if fg[loopEnd] == fg[loopStart] {
			loopLen = loopEnd - loopStart
			break
		}
		loopStart--
	}

	k %= loopLen
	if k < n {
		k += loopLen
	}

	fmt.Println(fg[k-1] + 1)
}
