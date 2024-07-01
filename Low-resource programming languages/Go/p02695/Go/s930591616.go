// なんだこれ Aを決め打ちするのか？まにあうんかそれ
package main

import "fmt"

var N, M, Q int
var AS [][]int

func main() {
	fmt.Scan(&N, &M, &Q)
	AS = [][]int{}
	for i := 1; i <= M; i++ {
		a := []int{i}
		createAS(a)
	}
	queries := make([][]int, Q)
	for i := 0; i < Q; i++ {
		var a, b, c, d int
		fmt.Scan(&a, &b, &c, &d)
		queries[i] = []int{a, b, c, d}
	}
	ans := 0
	for _, a := range AS {
		tmp_ans := 0
		for _, q := range queries {
			if a[q[1]-1]-a[q[0]-1] == q[2] {
				tmp_ans += q[3]
			}
		}
		ans = max(ans, tmp_ans)
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func createAS(arr []int) {
	if len(arr) == N {
		tes := append([]int{}, arr...)
		AS = append(AS, tes)
	} else {
		limit := arr[len(arr)-1]
		tmp_arr := append([]int{}, arr...)
		for i := limit; i <= M; i++ {
			tmp_arr = append(tmp_arr, i)
			createAS(tmp_arr)
			tmp_arr = tmp_arr[:len(tmp_arr)-1]
		}
	}

}
