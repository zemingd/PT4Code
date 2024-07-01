package main

import (
	"fmt"
	"math"
	"os"
)

func MinInts(nums []int) (int, int) {
	var minIdx, minVal int
	for i, e := range nums {
		if i == 0 || e < minVal {
			minIdx = i
			minVal = e
		}
	}
	return minVal, minIdx
}

func ReadInt(f *os.File) int {
	var n int
	fmt.Fscanf(f, "%d", &n)
	return n
}

func ReadInts(f *os.File, n int) []int {
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscanf(f, "%d", &nums[i])
	}
	return nums
}

func diff(a, b int) int {
	return int(math.Abs(float64(a - b)))
}

// took 15min
func main() {
	N := ReadInt(os.Stdin)
	h := ReadInts(os.Stdin, N)

	dp := make([]int, N)
	dp[0], dp[1] = 0, diff(h[0], h[1])
	for i := 2; i < N; i++ {
		dp[i], _ = MinInts([]int{
			dp[i-1] + diff(h[i-1], h[i]),
			dp[i-2] + diff(h[i-2], h[i]),
		})
	}

	fmt.Println(dp[N-1])
}