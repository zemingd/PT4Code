package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var scan *bufio.Scanner
var writer io.Writer

func init() {
	scan = bufio.NewScanner(os.Stdin)
	writer = os.Stdout
	scan.Split(bufio.ScanWords)
}

func main() {
	solve()
}

func solve() {
	a, b := nextInt(), nextInt()
	aa := a - 1
	bb := b - 1
	res := bb / aa
	if bb%aa != 0 {
		res++
	}
	fmt.Fprint(writer, res)
}

func nextWord() string {
	scan.Scan()
	str := scan.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}
