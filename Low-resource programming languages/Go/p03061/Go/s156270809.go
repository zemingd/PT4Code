package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

// GCD : greatest common divisor (GCD) via Euclidean algorithm
func GCD(a, b int) int {
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	N := getInt()
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = getInt()
	}
	gcd := a[0]
	for i := 0; i < N; i++ {
		gcd = GCD(gcd, a[i])
	}
	for i := 0; i < N; i++ {
		a[i] /= gcd
	}

	gcd2 := a[0]
	find := false
	for i := 1; i < N; i++ {
		x := GCD(gcd2, a[i])
		if x == 1 {
			if find == false {
				find = true
			} else {
				gcd2 = x
			}
		} else {
			gcd2 = x
		}
	}

	gcd3 := a[len(a)-1]
	find = false
	for i := N - 1; i >= 0; i-- {
		x := GCD(gcd3, a[i])
		if x == 1 {
			if find == false {
				find = true
			} else {
				gcd3 = x
			}
		} else {
			gcd3 = x
		}
	}
	// out(gcd, gcd2, gcd3)
	out(max(gcd2, gcd3) * gcd)
}
