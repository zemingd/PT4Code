package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func gcd(m, n uint64) uint64 {
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetUint64(m)
	b := new(big.Int).SetUint64(n)
	return z.GCD(x, y, a, b).Uint64()
}

func remove(s []string, i int) []string {
	cs := make([]string, len(s))
	copy(cs, s)
	cs[i] = cs[len(s)-1]
	cs = cs[:len(s)-1]
	return cs
}

func main() {
	_, v := nextLine(), nextLine()

	vL := strings.Split(v, " ")

	var max uint64

	for i := 0; i < len(vL); i++ {
		nL := remove(vL, i)

		l, _ := strconv.ParseUint(nL[0], 10, 64)
		for _, n := range nL {
			intN, _ := strconv.ParseUint(n, 10, 64)
			l = gcd(intN, l)
		}

		if l >= max {
			max = l
		}
	}

	fmt.Println(max)
}
