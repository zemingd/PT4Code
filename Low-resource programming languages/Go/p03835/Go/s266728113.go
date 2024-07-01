package main

import "fmt"

// K := 各数字が超えてはいけない数字
// S := 総和

// memo[goal:][depth] := 残数goal, 深さdepthのcnt数

const MAX_NUM int = 2501

var (
	K    int
	S    int
	memo [MAX_NUM][MAX_NUM]int
)

func main() {
	fmt.Scan(&K)
	fmt.Scan(&S)
	for i := 0; i < MAX_NUM; i++ {
		for j := 0; j < MAX_NUM; j++ {
			memo[i][j] = -1
		}
	}

	fmt.Println(f(S, 3))
}

func f(goal int, depth int) int {
	if depth == 1 {
		if goal <= K {
			return 1
		} else {
			return 0
		}
	} else {

		if memo[goal][depth] != -1 {
			return memo[goal][depth]
		}

		acc := 0

		for i := 0; i <= K; i++ {
			if goal < i {
				break
			}
			acc += f(goal-i, depth-1)
		}

		memo[goal][depth] = acc

		return acc
	}
}
