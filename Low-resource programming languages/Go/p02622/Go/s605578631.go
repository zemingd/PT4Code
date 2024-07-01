package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

var sc = newScanner()

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

func main() {
	s, t := scanString(), scanString()
	answer := diff(s, t)
	fmt.Println(answer)
}

func debug(a ...interface{}) {
	fmt.Println(a...)
}

func diff(s, t string) int {
	diff := 0
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			diff++
		}
	}
	return diff
}
