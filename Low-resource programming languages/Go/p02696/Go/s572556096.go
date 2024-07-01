package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func max(a int, b int) int {
	if a >= b {
		return a
	}
	return b
}

func solve(A int, B int64, N int64) int64 {
	var x int64 = B - 1
	if x > N {
		x = N
	}
	return (int64(A) * x / B) - (int64(A) * (x / B))
}

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	hoge := sc.Text()
	i, e := strconv.Atoi(hoge)
	if e != nil {
		panic(e)
	}
	return i
}

func nextInt64() int64 {
	sc.Scan()
	hoge := sc.Text()
	i, e := strconv.ParseInt(hoge, 0, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	A, B, N := nextInt(), nextInt64(), nextInt64()
	fmt.Println(solve(A, B, N))
}
