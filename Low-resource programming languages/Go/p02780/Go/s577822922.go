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

	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}

	s := make([]int, n)
	s[0] = p[0]
	for i := 1; i < n; i++ {
		s[i] = s[i - 1] + p[i]
	}

	max := 0
	maxI := 0
	t := make([]int, n - (k - 1))
	for i := 0; i < n - (k - 1); i++ {
		t[i] = s[i + (k - 1)] - s[i]
		if max < t[i] {
			max = t[i]
			maxI = i
		}
	}

	total := float64(0)
	for i := maxI; i < maxI + k; i++ {
		total += ex(p[i])
	}

	fmt.Printf("%f", total)
}

func ex(x int) float64 {
	total := float64(0)
	for i := 1; i <= x; i++ {
		total += float64(i) / float64(x)
	}
	return total
}

