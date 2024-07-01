package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	a, b, c, d := readI(), readI(), readI(), readI()
	ans := make([]int, 4)
	ans[0] = a * c
	ans[1] = a * d
	ans[2] = b * c
	ans[3] = b * d
	fmt.Println(max(ans))
}

func max(a []int) int {
	l := len(a)
	m := a[0]
	for i := 1; i < l; i++ {
		if a[i] > m {
			m = a[i]
		}
	}
	return m
}

/*-----------Input utils-----------*/

var sc = bufio.NewScanner(os.Stdin)

func init() {
	if len(os.Args) >= 2 {
		if os.Args[1] == "debug" {
			debug()
		}
	}
	const buf = 200100
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, buf), buf)
}

func debug() {
	testFile, err := os.Open("./test/sample-1.in")
	if err != nil {
		fmt.Fprintln(os.Stderr, "There is no testfile.")
		os.Exit(1)
	}
	sc = bufio.NewScanner(testFile)
}

func readS() string {
	sc.Scan()
	return sc.Text()
}

func readR() []rune {
	return []rune(readS())
}

func readI() int {
	i, _ := strconv.Atoi(readS())
	return i
}

func readF() float64 {
	f, _ := strconv.ParseFloat(readS(), 64)
	return f
}
