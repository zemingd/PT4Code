package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextString() string {
	sc.Scan()
	return sc.Text()
}

const (
	a = "A"
	t = "T"

	c = "C"
	g = "G"
)

func main() {
	n := nextString()
	f := func(n string) string {
		switch n {
		case a:
			return t
		case t:
			return a
		case c:
			return g
		case g:
			return c
		}
		return ""
	}
	r := f(n)
	fmt.Println(r)
}
