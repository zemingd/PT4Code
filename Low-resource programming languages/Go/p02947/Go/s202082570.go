package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"reflect"
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
	var s []string
	sc := make([][27]int, n)
	for i := 0; i < n; i++ {
		s = append(s, nextWord())
		for j := 0; j < len(s[i]); j++ {
			sc[i][s[i][j]-"a"[0]]++
		}
	}

	c := 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			if reflect.DeepEqual(sc[i], sc[j]) {
				c++
			}
		}
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
