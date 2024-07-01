package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func isPossible(heights []int, k int, goal int) bool {

	for i := 0; i+k-1 < len(heights); i++ {
		diff := heights[i+k-1] - heights[i]
		if diff <= goal {
			return true
		}
	}

	return false
}

func calc(heights []int, k int, min, max int) int {

	if min+1 == max {
		return max
	}

	mid := (min + max) / 2
	if isPossible(heights, k, mid) {
		return calc(heights, k, min, mid)
	} else {
		return calc(heights, k, mid, max)
	}
}

func parse() ([]int, int) {

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Split(bufio.ScanWords)

	stdin.Scan()
	n, _ := strconv.Atoi(stdin.Text())

	stdin.Scan()
	k, _ := strconv.Atoi(stdin.Text())

	heights := make([]int, n)
	for i := 0; i < n; i++ {
		stdin.Scan()
		h, _ := strconv.Atoi(stdin.Text())
		heights[i] = h
	}

	sort.Slice(heights, func(i, j int) bool { return heights[i] < heights[j] })
	return heights, k
}

func main() {

	heights, k := parse()
	answer := calc(heights, k, -1, 1000000000)
	fmt.Println(answer)
}
