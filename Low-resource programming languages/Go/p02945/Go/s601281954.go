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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	a := nextInt()
	b := nextInt()

	max := 0
	if max < a+b {
		max = a + b
	}
	if max < a-b {
		max = a - b
	}
	if max < a*b {
		max = a * b
	}
	fmt.Printf("%d\n", max)
}
