package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
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
	n := nextInt()
	// a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n-1; i++ {
		b[i] = nextInt()
	}
	b[n-1] = 100001
	res := 0
	for i := 0; i < n-1; i++ {
		res += int(math.Min(float64(b[n-2-i]), float64(b[n-1-i])))
	}
	res += int(math.Min(float64(b[1]), float64(b[0])))

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
