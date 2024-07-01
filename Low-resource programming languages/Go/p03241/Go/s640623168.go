package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	buffsize := 1000000
	buff := make([]byte, buffsize)
	sc.Buffer(buff, buffsize)
	sc.Split(bufio.ScanWords)
}

func loadint() (result int) {
	sc.Scan()
	result, _ = strconv.Atoi(sc.Text())
	return
}

func gcd(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

func calc(n, m int) int {
	if n == 1 {
		return m
	}
	q := int(math.Sqrt(float64(m)))
	result := 1
	for i := q; i >= 1; i-- {
		if m%i == 0 {
			r := i
			if m/r >= n {
				if r > result {
					result = r
				}
			}
			r = m / i
			if i >= n {
				if r > result {
					result = r
				}
			}
		}
	}
	return result
}

func calc1(n, m int) int {
	result := 1
	a := 1
	for true {
		b := m - (a * (n - 1))
		if b < 1 {
			break
		}
		x := gcd(a, b)
		if x > result {
			result = x
		}
		a++
	}
	return result
}

func check() {
	for n := 2; n < 130; n++ {
		for m := n; m < 1000; m++ {
			result := calc(n, m)
			r1 := calc1(n, m)
			if r1 != result {
				fmt.Println(n, m, result, r1)
			}
		}
	}
}

func main() {
	n := loadint()
	m := loadint()
	// check()
	result := calc(n, m)
	fmt.Println(result)
}
