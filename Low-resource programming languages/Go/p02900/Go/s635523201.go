package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func MinMax(x, y int) (int, int) {
	if x > y {
		return y, x
	}
	return x, y
}

func EuclideanAlgorithm(a, b int) int {
	x, y := MinMax(a, b)
	for {
		t := y % x
		if t == 0 {
			return x
		}
		y = x
		x = t
	}
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var prime []int

func isPrime(x int) bool {
	for _, p := range prime {
		if x % p == 0 {
			return false
		}
	}
	prime = append(prime, x)
	return true
}

func main() {
	a := nextInt()
	b := nextInt()

	x := EuclideanAlgorithm(a, b)

	total := 1
	for i := 2; i<=x / 2; i++ {
		if a % i == 0 && b % i == 0 && isPrime(i) {
			total++
		}
	}

	fmt.Printf("%d", total)
}
