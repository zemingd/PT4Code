package main

import (
	"bufio"
	"fmt"
	"math"
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
	n, t, a := getInt(), getFloat(), getFloat()

	h := make([]float64, n)

	for i := range h {
		h[i] = getFloat()
	}

	var min float64
	min = 100000
	ans := 0

	for i, v := range h {
		tmp := t - 0.006*v
		if math.Abs(a-tmp) < min {
			min = math.Abs(a - tmp)
			ans = i
		}
	}
	fmt.Println(ans + 1)
}
