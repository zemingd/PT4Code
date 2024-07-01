package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	var N int
	var A []int

	fmt.Scanf("%d", &N)

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text := stdin.Text()
	a := strings.Split(text, " ")
	for _, v := range a {
		fig, _ := strconv.Atoi(v)
		A = append(A, fig)
	}

	maxValue := A[0]
	for i := 1; i < N; i++ {
		maxValue += min(A[i-1], A[1])
	}

	fmt.Println(maxValue)
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}
