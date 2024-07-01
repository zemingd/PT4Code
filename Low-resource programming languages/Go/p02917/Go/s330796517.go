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
	b := nextInts(n - 1)

	res := make([]int, n)
	res[0], res[1] = b[0], b[0]
	for i := 1; i < n-1; i++ {
		if res[i] > b[i] {
			res[i] = b[i]
		}
		res[i+1] = b[i]
	}

	sum := 0
	for i := 0; i < n; i++ {
		sum += res[i]
	}
	fmt.Println(sum)
}
