package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := readI()
	h := make([]int, n+1)
	for i := 1; i <= n; i++ {
		h[i] = readI()
	}

	dp := make([]int, n+1)
	for i := 2; i <= n; i++ {
		if i-2 >= 1 {
			dp[i] = min(dp[i-2]+abs(h[i-2]-h[i]), dp[i-1]+abs(h[i-1]-h[i]))
		} else {
			dp[i] = dp[i-1] + abs(h[i-1]-h[i])
		}
	}
	fmt.Println(dp[n])
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func min(a ...int) int {
	m := a[0]
	for i := 1; i < len(a); i++ {
		if m > a[i] {
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
