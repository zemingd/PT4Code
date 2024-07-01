package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
)

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func solve(w []int, v []int, W int) int {
    dp := make([]int, W+1)
    for i := range w {
        wi, vi := w[i], v[i]
        for j:=W; j>=wi; j-- {
            dp[j] = max(dp[j], dp[j-wi]+vi)
        }
    }
    return dp[W]
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
    nw := readLineNums(bf)
    N, W := nw[0], nw[1]
    w := make([]int, 0)
    v := make([]int, 0)
    for i:=0; i<N; i++ {
        wv := readLineNums(bf)
        w = append(w, wv[0])
        v = append(v, wv[1])
    }
    fmt.Println(solve(w, v, W))
}
