package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	for j := 1; j < n; j++ {
		idx := sort.Search(len(xs), func(i int) bool { return xs[i] < as[j] })
		if idx == len(xs) {
			xs = append(xs, as[j])
		} else {
			xs[idx] = as[j]
		}
	}
	fmt.Println(len(xs))
}
