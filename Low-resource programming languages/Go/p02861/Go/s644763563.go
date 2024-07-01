package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	N := scanInt()
	x, y := scanFloatSlice2(N)
	var ans float64
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			ans += math.Hypot(x[i]-x[j], y[i]-y[j])
		}
	}
	fmt.Println(ans / float64(N))
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func scanInt2() (int, int) {
	return scanInt(), scanInt()
}

func scanFloat() float64 {
	sc.Scan()
	a, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func scanFloat2() (float64, float64) {
	return scanFloat(), scanFloat()
}

func scanSlice(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanSlice2(n int) ([]int, []int) {
	a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], b[i] = scanInt2()
	}
	return a, b
}

func scanFloatSlice(n int) []float64 {
	a := make([]float64, n)
	for i := 0; i < n; i++ {
		a[i] = scanFloat()
	}
	return a
}

func scanFloatSlice2(n int) ([]float64, []float64) {
	a := make([]float64, n)
	b := make([]float64, n)
	for i := 0; i < n; i++ {
		a[i], b[i] = scanFloat2()
	}
	return a, b
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func larger(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func largest(a, b, c int) (lgst int) {
	if a > b {
		lgst = a
	} else {
		lgst = b
	}
	if c > lgst {
		lgst = c
	}
	return
}

func smallest(a, b, c int) (slst int) {
	if a < b {
		slst = a
	} else {
		slst = b
	}
	if c < slst {
		slst = c
	}
	return
}

func yesOrNo(b bool) string {
	if b {
		return "Yes"
	}
	return "No"
}
