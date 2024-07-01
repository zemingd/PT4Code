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

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

var sc = newScanner()

func divisors(n int) map[int]int {
	for i := 2; i <= n; i++ {
		if n%i == 0 {
			d := divisors(n / i)
			d[i]++
			return d
		}
	}
	return make(map[int]int)
}

func main() {
	n, m := scanInt(), scanInt()
	a := scanInts(n)

	lm := make(map[int]int)

	for i := 0; i < n; i++ {
		for k, v := range divisors(a[i]) {
			if lm[k] < v {
				lm[k] = v
			}
		}
	}

	lcm := 1
	for k, v := range lm {
		for i := 0; i < v; i++ {
			lcm *= k
		}
	}

	fmt.Println(m/(lcm/2) - m/lcm)
}
