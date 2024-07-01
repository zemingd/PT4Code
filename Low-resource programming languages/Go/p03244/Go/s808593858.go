package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

var c = 0

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	a := map[int]int{}
	b := map[int]int{}
	for i := 0; i < n; i++ {
		v, _ := strconv.Atoi(stringLineScan())
		if i%2 == 0 {
			a[v]++
		} else {
			b[v]++
		}
	}
	x := make([]int, 4)
	y := make([]int, 4)
	for v, k := range a {
		if x[1] < k {
			x[0], x[1], x[2], x[3] = v, k, x[0], x[1]
		} else if x[3] < k {
			x[2], x[3] = v, k
		}
	}
	for v, k := range b {
		if y[1] < k {
			y[0], y[1], y[2], y[3] = v, k, y[0], y[1]
		} else if y[3] < k {
			y[2], y[3] = v, k
		}
	}
	if x[0] != y[0] {
		fmt.Println(n - x[1] - y[1])
	} else if x[1] > y[1] {
		fmt.Println(n - x[1] - y[3])
	} else {
		fmt.Println(n - y[1] - x[3])
	}

}