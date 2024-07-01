package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
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
	s := nextWord()
	res := 0
	max := n / 2
	rng := 0
	for k := max; k > res; k-- {
		for i := max - rng; i <= max+rng; i++ {
			if strings.Contains(s[i-k:i+1], s[i+1:]) {
				res = k
			}
		}
		rng++
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
