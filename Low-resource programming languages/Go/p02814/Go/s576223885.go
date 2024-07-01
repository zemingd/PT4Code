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

var sc = newScanner()

func gcd(a, b int) int {
	if a > b {
		a, b = b, a
	}
	for a != 0 {
		a, b = b%a, a
	}
	return b
}

func lcm(a, b int) int64 {
	return int64(a/gcd(a, b)) * int64(b)
}

func f(n int) int {
	res := 0
	for n%2 == 0 {
		n /= 2
		res++
	}
	return res
}

func main() {
	n, m := scanInt(), scanInt()
	a := scanInts(n)

	t := f(a[0])
	for i := 0; i < n; i++ {
		if f(a[i]) != t {
			fmt.Println(0)
			return
		}
		a[i] >>= uint(t)
	}
	m >>= uint(t - 1)

	l := int64(1)
	for i := 0; i < n; i++ {
		l = lcm(int(l), a[i])
		if l > int64(m) {
			fmt.Println(0)
			return
		}
	}

	m /= int(l)
	fmt.Println((m + 1) / 2)
}
