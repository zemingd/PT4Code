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

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func abs(x int) int {
	if x < 0 {
		return -1 * x
	} else {
		return x
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()

	ps := make([]int, n)
	cs := make([]int, n)
	for i := 0; i < n; i++ {
		ps[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		cs[i] = nextInt()
	}

	ans := -100000000000
	for i := 0; i < n; i++ {
		key := ps[i] - 1
		point := 0
		for n := 1; n <= k; n++ {
			point += cs[key]
			if point > ans {
				ans = point
			}
			key = ps[key] - 1
		}
	}
	fmt.Println(ans)
}
