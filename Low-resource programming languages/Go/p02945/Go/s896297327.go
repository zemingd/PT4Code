package main

import (
	"bufio"
	"fmt"
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

func returnMax(a, b int) (max int) {
	add := a + b
	sub := a - b
	times := a * b
	return maxInt(times, maxInt(add, sub))
}

func maxInt(l, r int) int {
	if l < r {
		return r
	}
	return l
}

func main() {
	a, b := nextInt(), nextInt()
	max := returnMax(a, b)
	fmt.Println(max)
}
