package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
)

func solution(n, k int, nums []int) float64 {
	s := make(map[int]float64, n)
	var sum float64
	for i := 0; i < n; i++ {
		sum += (1 + float64(nums[i])) / 2
		s[i] = sum
	}
	var ans float64 = -1 << 63
	for i := 0; i <= n-k; i++ {
		ans = max(ans, s[i+k]-s[i])
	}
	return ans
}

func max(x, y float64) float64 {
	if x > y {
		return x
	}
	return y
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	reader := bufio.NewReaderSize(os.Stdin, 1e4)
	b, _, _ := reader.ReadLine()

	nums := make([]int, n)
	for i, v := range bytes.Split(b, []byte(" ")) {
		nums[i], _ = strconv.Atoi(string(v))
	}

	fmt.Printf("%.12f\n", solution(n, k, nums))
}
