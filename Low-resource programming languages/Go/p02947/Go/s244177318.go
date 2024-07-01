package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
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

	c := 0
	n := nextInt()
	var s []string
	sx := make([][]string, n)
	sm := make(map[string]int, n)
	for i := 0; i < n; i++ {
		s = append(s, nextWord())
		for j := 0; j < len(s[i]); j++ {
			sx[i] = append(sx[i], string(s[i][j]))
		}
		sort.Strings(sx[i])
		c += sm[strings.Join(sx[i], "")]
		sm[strings.Join(sx[i], "")]++
	}
	fmt.Fprint(writer, c)
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
