package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

var sc = newScanner()

func main() {
	n := scanInt()

	var min, res int
	res = math.MinInt32
	for i := 0; i < n; i++ {
		r := scanInt()
		if i == 0 {
			min = r
		} else {
			if r-min > res {
				res = r - min
			}
			if min > r {
				min = r
			}
		}
	}
	fmt.Println(res)
}

