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
	for i := 0; i < n-1; i++ {
		for j := 1; j <= i+1; j++ {
			if strings.Contains(s[i+1:], s[i-j+1:i+1]) && res < j {
				res = j
			}
		}
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
