package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
	"math"
)

var INF int32 = math.MaxInt32
var INF64 int64 = math.MaxInt64

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func min64(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func max64(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
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

func readLineNum64s(bf *bufio.Reader) []int64 {
	line, _ := bf.ReadString('\n')
	line = strings.Trim(line, "\n")
	fields := strings.Split(line, " ")
	nums := []int64{}
	for _, field := range fields {
		num, _ := strconv.ParseInt(field, 10, 64)
		nums = append(nums, num)
	}
	return nums
}

func readLineFloats(bf *bufio.Reader) []float64 {
	line, _ := bf.ReadString('\n')
	line = strings.Trim(line, "\n")
	fields := strings.Split(line, " ")
	nums := []float64{}
	for _, field := range fields {
		num, _ := strconv.ParseFloat(field, 64)
		nums = append(nums, num)
	}
	return nums
}

func readLineStrs(bf *bufio.Reader) []string {
	line, _ := bf.ReadString('\n')
	line = strings.Trim(line, "\n")
	return strings.Split(line, " ")
}

func main() {
	bf := bufio.NewReader(os.Stdin)
	nk := readLineNums(bf)
	N, K := nk[0], nk[1]
	ans := 0
	for N > 0 {
		ans++
		N /= K
	}
	fmt.Println(ans)
}
