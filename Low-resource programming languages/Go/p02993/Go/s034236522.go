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

func main() {
	s := nextString()
	rs := []rune(s)
	old := rs[0]
	dif := func() bool {
		for _, r := range rs[1:] {
			if old == r {
				return false
			}
		}
		return true
	}
	if dif() {
		fmt.Println(bad)
	} else {
		fmt.Println(good)
	}
}
