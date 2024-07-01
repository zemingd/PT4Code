package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func getFloat() float64 {
	sc.Scan()
	n, _ := strconv.ParseFloat(sc.Text(), 64)
	return n
}

func sum(n []int) int {
	a := 0
	for _, v := range n {
		a += v
	}
	return a
}

func partseFloat(s string) (n float64) {
	n, _ = strconv.ParseFloat(s, 64)
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b, c := getInt(), getInt(), getInt()

	n := []int{a, b, c}
	sort.Ints(n)

	fmt.Println(10*n[2] + n[0] + n[1])
}
