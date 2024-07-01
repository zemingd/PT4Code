package main
import (
	"fmt"
)
func main() {
	var n int
	fmt.Scanf("%d", &n)
	costs := make([]int, n)
	for i:= 0; i < n; i++ {
		fmt.Scanf("%d", &costs[i])
	}
	answer := findMinCost(costs)
	fmt.Println(answer)
}

func findMinCost(costs []int) int {
	var dp [100001]int
	dp[0] = 0
	dp[1] = 0
	dp[2] = abs(costs[1] - costs[0])
	for i:= 3; i < len(costs) + 1; i++ {
		dp[i] = min(dp[i-1]+abs(costs[i-1] - costs[i-2]), dp[i-2] + abs(costs[i-1]- costs[i-3]))
	}
	return dp[len(costs)]
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}