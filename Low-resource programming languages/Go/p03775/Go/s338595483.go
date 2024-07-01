package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	a := make([]int, 0)
	for i := 1; i <= 100000; i++ {
		if n%i == 0 {
			p := strconv.Itoa(i)
			q := strconv.Itoa(n / i)
			a = append(a, max(len(p), len(q)))
		}
	}
	fmt.Println(min(a))
}
func max(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}
