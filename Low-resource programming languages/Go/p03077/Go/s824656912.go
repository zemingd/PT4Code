// https://atcoder.jp/contests/abc123/tasks/abc123_c

package main

import "fmt"
import "math"

// 4 {5 5 2 5 5}
// 0 [4 0 0 0 0]
// 0 [0 4 0 0 0]
// 0 [0 2 2 0 0]
// 0 [0 0 2 2 0]
// 0 [0 0 0 2 2]
// 0 [0 0 0 0 4]

// 5 {2 5 5 5 5}
// 3 [2 0 0 0 0]
// 1 [2 2 0 0 0]
// 0 [1 2 2 0 0]
// 0 [0 1 2 2 0]
// 0 [0 0 1 2 2]
// 0 [0 0 0 1 4]
// 0 [0 0 0 0 5]

// 5 {5 5 5 5 2}
// 0 [5 0 0 0 0]
// 0 [0 5 0 0 0]
// 0 [0 0 5 0 0]
// 0 [0 0 0 5 0]
// 0 [0 0 0 3 2]
// 0 [0 0 0 1 4]
// 0 [0 0 0 0 5]

// 5 {5 2 5 5 5}
// 0 [5 0 0 0 0]
// 0 [3 2 0 0 0]
// 0 [1 2 2 0 0]
// 0 [0 1 2 2 0]
// 0 [0 0 1 2 2]
// 0 [0 0 0 1 4]
// 0 [0 0 0 0 5]

// 5 {3 2 4 3 5}
// 2 [3 0 0 0 0]
// 0 [3 2 0 0 0]
// 0 [1 2 2 0 0]
// 0 [0 1 2 2 0]
// 0 [0 0 1 2 2]
// 0 [0 0 0 1 4]
// 0 [0 0 0 0 5]

// 5 {1 1 5 1 1}
// 4 [1 0 0 0 0]
// 3 [1 1 0 0 0]
// 2 [1 1 1 0 0]
// 3 [1 1 1 0 0]
func min(n ...int64) int64 {
	m := n[0]
	for i := 1; i < len(n); i++ {
		if n[i] < m {
			m = n[i]
		}
	}
	return m
}

func main() {
	var N int64
	c := make([]int64, 5)
	fmt.Scanf("%d\n%d\n%d\n%d\n%d\n%d", &N, &c[0], &c[1], &c[2], &c[3], &c[4])

	bottleneck := min(c...)
	var delay int64
	if bottleneck < N {
		delay = int64(math.Ceil(float64(N) / float64(bottleneck)))
		fmt.Println(4 + delay)
	} else {
		fmt.Println(5)
	}
}
