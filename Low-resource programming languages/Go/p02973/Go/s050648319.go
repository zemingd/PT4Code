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

var mod int

func main() {
	mod = 1000000007
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		as[i] = intScanner()
	}
	xs := []int{as[0]}
	for i := 1; i < n; i++ {
		f := false
		for j := 0; j < len(xs); j++ {
			if as[i] > xs[j] {
				xs[j] = as[i]
				f = true
				break
			}
		}
		if !f {
			xs = append(xs, as[i])
		}
	}
	fmt.Println(len(xs))
}
