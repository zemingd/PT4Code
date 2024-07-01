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
	n, t := getInt(), getInt()

	m := make([][]int, n)

	cmin := 1000
	for i := range m {
		m[i] = []int{getInt(), getInt()}
		if m[i][1] <= t && m[i][0] < cmin {
			cmin = m[i][0]
		}
	}
	if cmin == 1000 {
		fmt.Println("TLE")
	} else {
		fmt.Println(cmin)
	}
}
