package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
	"math/big"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	l := strings.Split(nextLine(), " ")
	a0, _ := strconv.ParseUint(l[0], 10, 0)
	a := new(big.Int).SetUint64(a0)
	b0, _ := strconv.ParseUint(l[1], 10, 0)
	b := new(big.Int).SetUint64(b0)
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	g := z.GCD(x, y, a, b)
	h := new(big.Int)
	h.Mul(a, b)
	i := new(big.Int)
	i.Div(h, g)
	fmt.Println(i)
}
