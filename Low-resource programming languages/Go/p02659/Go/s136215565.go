package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

var sc = newScanner()

func scanInt() int64 {
	sc.Scan()
	v, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return v
}

func scanFloat64() float64 {
	sc.Scan()
	v, _ := strconv.ParseFloat(sc.Text(), 64)
	return v
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

func main() {
	a, b := scanInt(), scanFloat64()
	answer := mul(a, b)
	fmt.Println(answer)
}

func debug(a ...interface{}) {
	fmt.Println(a...)
}

func mul(a int64, b float64) int64 {
	af := big.NewFloat(float64(a))
	bf := big.NewFloat(b)
	bf.Mul(af, bf)
	i, _ := bf.Int64()
	return i
}
