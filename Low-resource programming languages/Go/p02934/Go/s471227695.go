package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func sum(n []int) int {
	a := 0
	for _, v := range n {
		a += v
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	n := getInt()
	a := make([]int, n)

	var ans float64
	for i := range a {
		a[i] = getInt()
		ans += (1 / float64(a[i]))
	}

	fmt.Println(1 / ans)
}
