package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	d := make(map[int]int)
	ans := 1
	for i := 0; i < n; i++ {
		a, _ := strconv.Atoi(stringLineScan())
		x := PrimeFactors(a)
		for _, y := range x {
			d[y]++
		}
	}
	z := make([]int, 1)
	z[0] = 1
	for k, v := range d {
		if v%n == n-1 {
			z = append(z, k)
		}
		ans *= int(math.Pow(float64(k), float64(v/n)))
	}
	fmt.Println(ans * max(z))
}
func PrimeFactors(n int) (pfs []int) {
	for n%2 == 0 {
		pfs = append(pfs, 2)
		n = n / 2
	}
	for i := 3; i*i <= n; i = i + 2 {
		for n%i == 0 {
			pfs = append(pfs, i)
			n = n / i
		}
	}
	if n > 2 {
		pfs = append(pfs, n)
	}
	return
}
func max(x []int) int {
	y := x[0]
	for i := 1; i < len(x); i++ {
		if x[i] > y {
			y = x[i]
		}
	}
	return y
}
