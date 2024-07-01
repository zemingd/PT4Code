package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var heights []int
var k int

func isPossible(goal int) bool {

	for i := 0; i+k-1 < len(heights); i++ {
		diff := heights[i+k-1] - heights[i]
		if diff <= goal {
			return true
		}
	}

	return false
}

func calc(min, max int) int {

	if min+1 == max {
		return max
	}

	mid := (min + max) / 2
	if isPossible(mid) {
		return calc(min, mid)
	} else {
		return calc(mid, max)
	}
}

func parse() {

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Split(bufio.ScanWords)

	stdin.Scan()
	n, _ := strconv.Atoi(stdin.Text())

	stdin.Scan()
	k_, _ := strconv.Atoi(stdin.Text())
	k = k_

	heights = make([]int, n)
	for i := 0; i < n; i++ {
		stdin.Scan()
		h, _ := strconv.Atoi(stdin.Text())
		heights[i] = h
	}

	sort.Sort(sort.IntSlice(heights))
}

func main() {

	parse()
	answer := calc(-1, 1000000000)
	fmt.Println(answer)
}
