package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := next()
	a := next()
	b := next()
	fmt.Print(do(n, a, b))
}

func next() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func do(n, a, b int) int {
	num0 := min(n, 1000*(a+b))
	div := num0 / (a + b)
	mod := num0 % (a + b)
	num1 := div * a
	num2 := min(mod, a)
	return num1 + num2
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
