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

func calcGcd(l, r int) int {
	if r > l {
		r, l = l, r
	}

	d := l % r
	for d != 0 {
		l = r
		r = d
		d = l % r
	}
	return r
}

func calcMinForNumberOfSweets(l, r int) int {
	gcd := calcGcd(l, r)
	ld := l / gcd
	rd := r / gcd
	return gcd * ld * rd
}

func main() {
	a, b := nextInt(), nextInt()
	r := calcMinForNumberOfSweets(a, b)
	fmt.Println(r)
}
