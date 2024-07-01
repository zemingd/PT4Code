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

func nextInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = nextInt()
	}
	return ints
}

func main() {
	var n int
	fmt.Scan(&n)
	sc.Split(bufio.ScanWords)
	a := nextInts(n)
	b := nextInts(n)
	c := nextInts(n - 1)

	res := 0
	before := -100
	for i := 0; i < n; i++ {
		index := a[i] - 1
		res += b[index]
		if index-before == 1 {
			res += c[index-1]
		}
		before = index
	}
	fmt.Println(res)
}
