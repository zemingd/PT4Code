package main

import "fmt"

var able = false
var N, M, X int
var ans = 12 * 100001
var up [][]int
var costs []int

func main() {
	fmt.Scan(&N, &M, &X)
	up = make([][]int, N)
	costs = make([]int, N)
	for i := 0; i < N; i++ {
		var cost int
		fmt.Scan(&cost)
		costs[i] = cost
		skills := make([]int, M)
		for j := 0; j < M; j++ {
			var s int
			fmt.Scan(&s)
			skills[j] = s
		}
		up[i] = skills
	}

	solve(0, make([]int, M), 0)
	if !able {
		ans = -1
	}
	fmt.Println(ans)
}

func solve(cur int, skills []int, cost int) {
	if cur >= N {
		if cost >= ans {
			return
		}
		for _, v := range skills {
			if v < X {
				return
			}
		}
		able = true
		ans = cost
		return
	}
	solve(cur+1, append([]int{}, skills...), cost)
	// 買う
	for i, v := range up[cur] {
		skills[i] += v
	}
	solve(cur+1, append([]int{}, skills...), cost+costs[cur])
}
