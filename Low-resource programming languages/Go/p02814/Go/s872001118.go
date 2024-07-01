package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// input scanner
var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func gcd(a int64, b int64) int64 {
	for b > 0 {
		a, b = b, a%b
	}
	return a
}

func lcm(a int64, b int64) int64 {
	return (a / gcd(a, b)) * b
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	m := int64(nextInt())
	var b []int64
	lcmAll := int64(1)
	for i := 0; i < n; i++ {
		a := int64(nextInt())
		bi := a / 2
		b = append(b, bi)
		lcmAll = lcm(lcmAll, bi)
		if lcmAll > m {
			fmt.Println(0)
			return
		}
	}
	for i := 0; i < n; i++ {
		if (lcmAll/b[i])%2 == 0 {
			fmt.Println(0)
			return
		}
	}
	ans := (m/lcmAll + 1) / 2
	fmt.Println(ans)
}
