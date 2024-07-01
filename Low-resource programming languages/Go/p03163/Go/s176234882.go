package main

import (
	"fmt"
)

type Item struct {
	Value  int
	Weight int
}

func main() {
	var ItemNumber int
	var MaxWeight int
	sack := []Item{}

	fmt.Scanln(&ItemNumber, &MaxWeight)

	dp := make([]int, MaxWeight+1)
	fill(dp, -1)
	dp[0] = 0

	for i := 0; i < ItemNumber; i++ {
		X := Item{}
		fmt.Scanln(&X.Weight, &X.Value)
		sack = append(sack, X)
	}
	value := Knapsack(sack, dp,ItemNumber,MaxWeight)
	fmt.Print(int64(value))
}

func Knapsack(sacks []Item,dp []int, N int, W int) int{
	for i := 0; i < N; i++ {
		w := sacks[i].Weight
		v := sacks[i].Value
		for j := W - w; j >= 0; j-- {
			if dp[j] == -1 {
				continue
			}
			dp[j+w] = max(dp[j+w], dp[j]+v)
		}
	}
	return reduce(max, dp)
}


func reduce(f func(x, y int) int, a []int) int {
	result := a[0]
	for i := 1; i < len(a); i++ {
		result = f(result, a[i])
	}
	return result
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func fill(a []int, x int) {
	for i := 0; i < len(a); i++ {
		a[i] = x
	}
}
