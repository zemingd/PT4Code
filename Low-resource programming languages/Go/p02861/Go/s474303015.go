package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type pair struct {
	x int
	y int
}

func average(pairs []pair) float64 {
	n := len(pairs)
	maxEdg := float64(calcEdgeNum(n - 1))
	allPaternNum := float64(calcFactorial(n))
	lengths := calcLengths(pairs)
	var sum float64 = 0
	num := allPaternNum * float64(n-1) / maxEdg
	for _, l := range lengths {
		sum += l * num
	}
	return sum / allPaternNum
}

func calcFactorial(n int) int {
	r := 1
	for i := 2; i <= n; i++ {
		r = r * i
	}
	return r
}

func calcEdgeNum(n int) int {
	r := 1
	for i := 2; i <= n; i++ {
		r = r + i
	}
	return r
}

func calcLengths(pairs []pair) []float64 {
	n := len(pairs)
	maxEdg := calcEdgeNum(n - 1)
	ls := make([]float64, maxEdg)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			maxEdg--
			ls[maxEdg] = calcLength(pairs[i], pairs[j])
		}
	}
	return ls
}

func calcLength(from, to pair) float64 {
	xx := from.x - to.x
	yy := from.y - to.y
	return math.Sqrt(float64(xx*xx + yy*yy))
}

func main() {
	n := nextInt()
	pairs := make([]pair, n)
	for i := 0; i < n; i++ {
		pairs[i] = pair{nextInt(), nextInt()}
	}
	r := average(pairs)
	fmt.Println(r)
}
