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
	case a <= 5:
		fmt.Println(0)
	case a <= 12:
		fmt.Println(b / 2)
	default:
		fmt.Println(b)
	}
}
