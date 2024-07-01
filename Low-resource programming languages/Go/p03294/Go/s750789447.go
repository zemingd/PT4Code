package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	nItems := scanInt(sc)

	ns := make([]int64, nItems)
	for i := 0; i < len(ns); i++ {
		ns[i] = int64(scanInt(sc))
	}

	m := ns[0]
	for i := 1; i < len(ns); i++ {
		m = lcm(m, ns[i])
	}
	m -= 1

	if m <= 0 {
		panic("mmm")
	}

	f := int64(0)
	for _, n := range ns {
		f += m % n
	}

	fmt.Println(f)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func lcm(a, b int64) int64 {
	if a > b {
		b, a = a, b
	}
	return a * (b / gcd(a, b))
}

func gcd(a, b int64) int64 {
	if a > b {
		b, a = a, b
	}

	for b%a != 0 {
		b, a = a, b%a
	}
	return a
}
