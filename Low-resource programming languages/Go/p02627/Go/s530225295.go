package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
	s := scanString()
	if strings.ToLower(s) == s {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}

func debug(a ...interface{}) {
	fmt.Println(a...)
}
