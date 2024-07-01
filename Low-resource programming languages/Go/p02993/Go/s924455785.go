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
	bad  = "Bad"
	good = "Good"
)

func isDif(s string) bool {
	rs := []rune(s)
	old := rs[0]
	for _, r := range rs[1:] {
		if old == r {
			return true
		}
		old = r
	}
	return false
}

func main() {
	s := nextString()

	if isDif(s) {
		fmt.Println(bad)
	} else {
		fmt.Println(good)
	}
}
