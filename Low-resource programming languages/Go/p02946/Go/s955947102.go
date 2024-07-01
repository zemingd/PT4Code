package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner
var writer io.Writer

func init() {
	sc = bufio.NewScanner(os.Stdin)
	writer = os.Stdout
	sc.Split(bufio.ScanWords)
}

func main() {
	solve()
}

func solve() {
	k, x := nextInt(), nextInt()
	min := x - (k - 1)
	for i := 0; i < k*2-1; i++ {
		fmt.Fprint(writer, min+i, " ")
	}
}

func nextWord() string {
	sc.Scan()
	str := sc.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}
