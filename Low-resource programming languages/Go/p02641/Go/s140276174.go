package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	x, n := scanInt(), scanInt()
	xs := make([]int, 101)
	for i := range xs {
		xs[i] = i
	}

	for i := 0; i < n; i++ {
		p := scanInt()
		xs[p] = -10000
	}

	d := 10000
	var ans int
	for _, v := range xs {
		if abs(x-v) < d {
			d = x - v
			ans = v
		}
	}
	fmt.Println(ans)
}
