package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	k := nextInt()

	p := make([]float64, n)
	for i := 0; i < n; i++ {
		p[i] = ex(nextInt())
	}

	s := make([]float64, n + 1)
	s[0] = 0
	for i := 1; i <= n; i++ {
		s[i] = s[i - 1] + p[i - 1]
	}

	max := float64(0)
	t := make([]float64, n - k + 1)
	for i := 0; i < n - k + 1; i++ {
		t[i] = s[i + k] - s[i]
		if max < t[i] {
			max = t[i]
		}
	}

	fmt.Printf("%.12f", max)
}

func ex(x int) float64 {
	total := float64(0)
	for i := 1; i <= x; i++ {
		total += float64(i) / float64(x)
	}
	return total
}

