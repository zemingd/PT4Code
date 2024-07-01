package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

const div = 1000000000 + 7

func main() {
	n, b := nextInt(), nextInt()

	bl := int64(b)
	red := int64(n - b)
	sel := red + 1
	bsep := bl - 1

	for i := 1; i <= b; i++ {
		a := nCr(sel, int64(i))
		b := nCr(bsep, int64(i-1))
		c := a.Mul(a, b)
		fmt.Println(c.Mod(c, big.NewInt(div)))
	}
}

func nCr(n, r int64) *big.Int {
	if r == 0 || n == r {
		return big.NewInt(1)
	}

	a := big.NewInt(1)
	for i := 0; i < int(r); i++ {
		a = a.Mul(a, big.NewInt(n-int64(i)))
	}

	b := big.NewInt(1)
	for i := 1; i <= int(r); i++ {
		b = b.Mul(b, big.NewInt(int64(i)))
	}

	return a.Div(a, b)
}
