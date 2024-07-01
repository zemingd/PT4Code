package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

// utils
func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func max(a, b int) int {
	return int(math.Max(float64(a), float64(b)))
}

func min(a, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

func abs(a, b int) int {
	return int(math.Abs(float64(a) - float64(b)))
}

//data types

type pair struct {
	first  int
	second int
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()
	p := make([]int, n)

	for i := range p {
		p[i] = nextInt()
	}

	max := 0
	maxP := make([]int, k)

	for i := 0; i <= n-k; i++ {
		tmp := p[i : i+k]
		tmpSum := sum(tmp)
		if tmpSum >= max {
			max = tmpSum
			copy(maxP, tmp)
		}
	}

	ans := 0.0
	for _, v := range maxP {
		ans += expect(v)
	}
	fmt.Printf("%6f", ans)
}

func sum(a []int) int {
	sum := 0
	for _, v := range a {
		sum += v
	}
	return sum
}

func expect(v int) float64 {
	if v%2 == 0 {
		return float64(v/2) + 0.5
	}
	return float64(v/2 + 1)
}
