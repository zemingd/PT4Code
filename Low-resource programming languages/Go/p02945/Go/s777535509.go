package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a, b := nextInt(), nextInt()

	switch {
	case a+b >= a-b && a+b >= a*b:
		fmt.Println(a + b)
	case a-b >= a+b && a-b >= a*b:
		fmt.Println(a - b)
	default:
		fmt.Println(a * b)
	}
}
