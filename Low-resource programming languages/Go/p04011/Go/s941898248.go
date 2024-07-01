package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

type scanner struct {
	sc *bufio.Scanner
}

func (sc *scanner) next() string {
	sc.sc.Scan()
	return sc.sc.Text()
}

func (sc *scanner) nextInt() int {
	i, err := strconv.Atoi(sc.next())
	if err != nil {
		panic(err)
	}
	return i
}

func newScanner(r io.Reader) *scanner {
	sc := bufio.NewScanner(r)
	sc.Split(bufio.ScanWords)
	return &scanner{
		sc: sc,
	}
}

var sc = newScanner(os.Stdin)

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	n := sc.nextInt()
	k := sc.nextInt()
	x := sc.nextInt()
	y := sc.nextInt()
	fmt.Println(min(n, k)*x + max(n-k, 0)*y)
}