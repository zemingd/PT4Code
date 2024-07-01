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
			p1 := pair{ar[i], ar[j]}
			p2 := pair{ar[j], ar[i]}
			v, ok1 := m[p1]
			v, ok2 := m[p2]
			if !ok1 && !ok2 {
				v := ar[i] * ar[j]
				m[p1], m[p2] = v, v
				ans = append(ans, v)
				continue
			}
			ans = append(ans, v)
		}
	}

	sort.Ints(ans)

	fmt.Println(ans[k-1])
}
