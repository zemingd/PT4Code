package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

var (
	N int
	A int
	B int
)

func main() {
	sc.Split(bufio.ScanWords)
	N, A, B = nextInt(), nextInt(), nextInt()

	fmt.Println(min(N*A, B))
}

func min(a, b int) int {
	if a < b {
		return a
	}

	return b
}
