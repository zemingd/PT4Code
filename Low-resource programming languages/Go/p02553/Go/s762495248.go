package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(nil, 10000000000)

	a, b, c, d := nextInt(), nextInt(), nextInt(), nextInt()

	ac := a * c
	ad := a * d
	bc := b * c
	bd := b * d

	fmt.Println(max(max(max(ac, ad), bc), bd))
}
