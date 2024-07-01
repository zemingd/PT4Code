package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func floatScanner() float64 {
	n, _ := strconv.ParseFloat(Scanner(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func stringSliceScanner(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scanner()
	}
	return a
}
func intSliceScanner(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = intScanner()
	}
	return a
}

var mod int

func main() {
	mod = 1000000007
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	s := Scanner()
	for i := 0; i < len(s); i++ {
		if string(s[i]) == "P" {
			fmt.Print("P")
		} else {
			fmt.Print("D")
		}
	}
	fmt.Println("")
}