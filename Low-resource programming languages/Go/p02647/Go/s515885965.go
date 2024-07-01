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
	n, k := scanInt(), scanInt()
	a := scanInts(n)
	answer := lights(n, k, a)
	for i, v := range answer {
		if i == n-1 {
			fmt.Printf("%d\n", v)
		} else {
			fmt.Printf("%d ", v)
		}

	}
}

func lights(n, k int, a []int) []int {
	tmp := make([]int, len(a))
	for i := 0; i < k; i++ {
		tmp, a = count(a, tmp)
	}
	return a
}

func count(a []int, count []int) ([]int, []int) {
	for i := 0; i < len(a); i++ {
		count[i] = 0
	}
	for i := 0; i < len(a); i++ {
		l := max(i-a[i], 0)
		r := min(i+a[i], len(a)-1)
		for j := l; j <= r; j++ {
			count[j]++
		}
	}
	return a, count
}
func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
func debug(a ...interface{}) {
	fmt.Println(a...)
}
