package main

import (
	"bufio"
	"fmt"
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

// func max(a, b int) int {
// 	return int(math.Max(float64(a), float64(b)))
// }

// func min(a, b int) int {
// 	return int(math.Min(float64(a), float64(b)))
// }

// func abs(a, b int) int {
// 	return int(math.Abs(float64(a) - float64(b)))
// }

// //data types

// type pair struct {
// 	first  int
// 	second int
// }

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()
	p := make([]int, n)

	for i := range p {
		p[i] = nextInt()
	}

	ans := sum(p[0:k])
	diff := 0

	for i := 1; i <= n-k; i++ {
		diff += p[i+k-1] - p[i-1]
		if diff > 0 {
			ans = sum(p[i : i+k])
			diff = 0
		}
	}
	fmt.Printf("%6f", ans)
}

func sum(a []int) float64 {
	sum := 0.0
	for _, v := range a {
		sum += expect(v)
	}
	return sum
}

func expect(v int) float64 {
	if v%2 == 0 {
		return float64(v/2) + 0.5
	}
	return float64(v/2 + 1)
}
