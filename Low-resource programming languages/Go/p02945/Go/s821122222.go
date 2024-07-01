package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
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
	a, b := nextInt(), nextInt()
	res := math.Max(float64(a+b), math.Max(float64(a*b), float64(a-b)))
	fmt.Fprint(writer, res)
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