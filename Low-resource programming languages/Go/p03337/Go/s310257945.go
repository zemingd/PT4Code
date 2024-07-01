package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	a, b := nextInt(), nextInt()
	add, sub, mul := a+b, a-b, a*b
	max := add
	if max < sub {
		max = sub
	}
	if max < mul {
		max = mul
	}

	fmt.Println(max)
}