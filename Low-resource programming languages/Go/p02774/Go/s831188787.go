package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

type pair struct {
	first  int
	second int
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()
	ar := make([]int, n)
	for i := 0; i < n; i++ {
		ar[i] = nextInt()
	}

	m := make(map[pair]int)

	var ans []int

	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			first, second := ar[i], ar[j]
			if first == 0 || second == 0 {
				ans = append(ans, 0)
				continue
			}
			p := pair{first, second}
			if _, ok := m[p]; !ok {
				m[p] = first * second
			}
			ans = append(ans, m[p])
		}
	}

	sort.Ints(ans)

	fmt.Print(ans[k-1])
}