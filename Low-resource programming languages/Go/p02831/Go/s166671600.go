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

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func Max(x ...int) int {
	max := x[0]
	for _, v := range x {
		if v > max {
			max = v
		}
	}
	return max
}

func Min(x ...int) int {
	min := x[0]
	for _, v := range x {
		if v < min {
			min = v
		}
	}
	return min
}

// GCD calculate GCD (Greatest Common Divisor) by Euclidean Algorithm
func GCD(a, b int) int {
	x := Min(a, b)
	y := Max(a, b)
	for {
		t := y % x
		if t == 0 {
			return x
		}
		y = x
		x = t
	}
}

func main() {
	a := nextInt()
	b := nextInt()

	gcd := GCD(a, b)

	fmt.Printf("%d", a*b/gcd)
}
