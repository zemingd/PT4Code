package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solution(n, k int, nums []int) float64 {
	s := make([]float64, n+1)
	s[0] = 0.0
	var sum float64
	for i := 1; i < n+1; i++ {
		sum += (1.0 + float64(nums[i-1])) / 2.0
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
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	k, _ := strconv.Atoi(sc.Text())

	nums := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		nums[i], _ = strconv.Atoi(sc.Text())
	}

	fmt.Println(solution(n, k, nums))
}
