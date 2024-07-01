package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
	"math"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func solve(hs []int, N int) int {
	dp := make([]int, N+1)
	for i:=2; i<=N; i++ {
		dp[i] = math.MaxInt32
		for l:=1; l<=2; l++ {
			if i-l <= 0 {
				// 无效石头
				continue
			}
			dp[i] = min(dp[i], dp[i-l]+abs(hs[i-1]-hs[i-l-1]))
		}
	}
	return dp[N]
}

func readLineNum(bf *bufio.Reader) int {
	line, _ := bf.ReadString('\n')
	line = strings.Trim(line, "\n")
	N, _ := strconv.Atoi(line)
	return N
}

func readLineNums(bf *bufio.Reader) []int {
	line, _ := bf.ReadString('\n')
	line = strings.Trim(line, "\n")
	fields := strings.Split(line, " ")
	nums := []int{}
	for _, field := range fields {
		num, _ := strconv.Atoi(field)
		nums = append(nums, num)
	}
	return nums
}

func main() {
	bf := bufio.NewReader(os.Stdin)
	N := readLineNum(bf)
	hs := readLineNums(bf)
	fmt.Println(solve(hs, N))
}
