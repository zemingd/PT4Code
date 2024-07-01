package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(next(), 64)
	return f
}

func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

func main() {
	sc.Split(bufio.ScanWords)
	N, T := nextInt(), nextInt()
	minC, minT := nextInt(), nextInt()
	for i := 1; i < N; i++ {
		c, t := nextInt(), nextInt()
		if t < minT {
			minC = c
			minT = t
		}
	}
	if minT <= T {
		fmt.Println(minC)
	} else {
		fmt.Println("TLE")
	}
}
