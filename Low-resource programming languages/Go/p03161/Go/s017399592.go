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

func main() {
	N, K := ReadInt(os.Stdin), ReadInt(os.Stdin)
	h := ReadInts(os.Stdin, N)

	dp := make([]int, N)
	for i := 1; i < N; i++ {
		v := []int{}
		for j := 1; j < K+1; j++ {
			if i-j >= 0 {
				v = append(v, dp[i-j]+diff(h[i-j], h[i]))
			}
		}

		dp[i], _ = MinInts(v)
	}

	fmt.Println(dp[N-1])
}