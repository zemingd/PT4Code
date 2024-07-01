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

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := make([]int, n)
	b := make([]int, 0)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	for i := 0; i < n; i++ {
		b = append(b, a[i])
		b = reverseInts(b)
	}

	for _, v := range b {
		fmt.Printf("%d ", v)
	}
}

func reverseInts(input []int) []int {
	if len(input) == 0 {
		return input
	}

	return append(reverseInts(input[1:]), input[0])
}
