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
	a := []int{0}
	a = append(a, scanInts(n)...)

	fg := []int{1}
	for i := 0; i < 2*n+100; i++ {
		fg = append(fg, a[fg[len(fg)-1]])
	}

	if k < n+1 {
		fmt.Println(fg[k])
		return
	}

	loopEnd := n
	loopStart := n - 1
	for fg[loopEnd] != fg[loopStart] {
		loopStart--
	}
	loopLen := loopEnd-loopStart

	k %= loopLen

	if k < n {
		k += loopLen
	}
	fmt.Println(fg[k])
}
