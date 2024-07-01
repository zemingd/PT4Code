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
	var n, k int
	fmt.Scan(&n, &k)
	sc.Split(bufio.ScanWords)
	p := nextInts(n)

	// search
	ans := 0.0
	for i := 0; i <= n-k; i++ {
		sum := 0.0
		for j := 0; j < k; j++ {
			sum += float64(1+p[i+j]) / 2.0 // 累積和
		}
		if ans < sum {
			ans = sum
		}
	}
	fmt.Printf("%.12f", ans)
}
