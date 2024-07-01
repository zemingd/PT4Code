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

type graph struct {
	d map[int]int
}

func main() {
	sc.Split(bufio.ScanWords)
	// INF := 100000000000000000

	n, k := scanInt(), scanInt()
	a := []int{0}
	a = append(a, scanInts(n)...)

	journey := []int{1}
	for i := 0; i < 2*n+100; i++ {
		next := a[journey[len(journey)-1]]
		journey = append(journey, next)
	}

	if k < n+1 {
		fmt.Println(journey[k])
		return
	}
	loopEnd := n
	loopStart := n - 1

	// ループを見つける
	for journey[loopStart] != journey[loopEnd] {
		loopStart--
	}
	period := loopEnd - loopStart

	k %= period

	for k < n {
		k += period
	}
	fmt.Println(journey[k])
}
