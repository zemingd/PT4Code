package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func rcvInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func rcvUint64() uint64 {
	sc.Scan()
	i, _ := strconv.ParseUint(sc.Text(), 10, 64)
	return i
}

func gcd(m, n uint64) uint64 {
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetUint64(m)
	b := new(big.Int).SetUint64(n)
	return z.GCD(x, y, a, b).Uint64()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := rcvInt()

	a := make([]uint64, n)
	for i := 0; i < n; i++ {
		a[i] = rcvUint64()
	}

	y := a[0]
	for _, x := range a {
		y = gcd(x, y)
	}

	fmt.Println(y)
}
