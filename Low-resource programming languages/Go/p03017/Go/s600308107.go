package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e6 + 7
)

var buf []byte = make([]byte, maxBufSize)
var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBufSize)
}

func main() {
	_, _, B, C, D := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
	S := nextLine()
	if strings.Contains(S, "##") {
		fmt.Println("No")
		return
	}
	if C < D || (C > D && strings.Contains(S[B:D], "...")) {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

func nextLine() string {
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

func min(a int, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
