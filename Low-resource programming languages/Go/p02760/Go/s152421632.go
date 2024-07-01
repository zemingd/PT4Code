package main

import (
	"fmt"
)

func main() {
	as := make([][]int, 3)
	for i := 0; i < 3; i++ {
		as[i] = make([]int, 3)
		for j := 0; j < 3; j++ {
			fmt.Scan(&as[i][j])
		}
	}
	var n int
	fmt.Scan(&n)
	bm := make(map[int]bool)
	for i := 0; i < n; i++ {
		var b int
		fmt.Scan(&b)
		bm[b] = true
	}
	var bingo bool
	for i := 0; i < 3; i++ {
		var ng bool
		for j := 0; j < 3; j++ {
			if _, ok := bm[as[i][j]]; !ok {
				ng = true
			}
		}
		if !ng {
			bingo = true
		}
	}
	for i := 0; i < 3; i++ {
		var ng bool
		for j := 0; j < 3; j++ {
			if _, ok := bm[as[j][i]]; !ok {
				ng = true
			}
		}
		if !ng {
			bingo = true
		}
	}
	{
		var ng bool
		for j := 0; j < 3; j++ {
			if _, ok := bm[as[j][j]]; !ok {
				ng = true
			}
		}
		if !ng {
			bingo = true
		}
	}
	{
		var ng bool
		for j := 0; j < 3; j++ {
			if _, ok := bm[as[j][2-j]]; !ok {
				ng = true
			}
		}
		if !ng {
			bingo = true
		}
	}
	if bingo {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
