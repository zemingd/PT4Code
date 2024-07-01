package main

import "fmt"

func main() {
	var n, totalTime int //cost num, total time
	tmpNums := scanNums(2)
	n = tmpNums[0]
	totalTime = tmpNums[1]

	var minCost = 2000
	for i := 0; i < n; i++ {
		var c, t int
		tmpNums := scanNums(2)
		c = tmpNums[0]
		t = tmpNums[1]
		if t <= totalTime && c < minCost {
			minCost = c
		}
	}

	if minCost < 2000 {
		fmt.Printf("%d\n", minCost)
	} else {
		fmt.Printf("TLE")
	}
}

/**
 * １行に空白区切りで数字を読み込み
 */
func scanNums(len int) (nums []int) {
	nums = make([]int, len)
	for i := 0; i < len; i++ {
		fmt.Scan(&nums[i])
	}
	return
}
