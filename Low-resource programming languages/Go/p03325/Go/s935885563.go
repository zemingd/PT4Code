package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func scanSlice(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func pow2(a int) int {
	return int(math.Pow(2, float64(a)))
}

func scanSumP(n int) int {
	a := 0
	for i := 0; i < n; i++ {
		a += div2(scanInt())
	}
	return a
}

func div2(n int) int {
	for i := 30; i > 0; i-- {
		if n%pow2(i) == 0 && n >= pow2(i) {
			return i
		}
	}
	return 0
}

func main() {
	sc.Split(bufio.ScanWords)
	n := scanInt()
	// fmt.Println(pow2(30))
	fmt.Println(scanSumP(n))
	// fmt.Println(div2(scanSumP(n)))
}
