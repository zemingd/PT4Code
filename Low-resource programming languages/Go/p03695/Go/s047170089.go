package main

import "fmt"

var leaderboard [8]bool
var freeColorNum int

func judgecolor(rate int) {
	color := rate / 400
	if color >= 8 {
		freeColorNum++
	} else {
		leaderboard[color] = true
	}
}

func minMaxColor() (int, int) {
	min := 0
	for _, v := range leaderboard {
		if v {
			min++
		}
	}

	max := min + freeColorNum
	if min == 0 {
		min = 1
	}

	return min, max
}

func main() {
	var N int
	fmt.Scan(&N)

	var rate int
	for i := 0; i < N; i++ {
		fmt.Scan(&rate)
		judgecolor(rate)
	}

	min, max := minMaxColor()
	fmt.Println(min, max)
}
