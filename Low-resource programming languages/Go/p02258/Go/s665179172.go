package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// 挿入ソート
func main() {

	// var num int
	// // fmt.Scanは自動で空白区切で読み込む
	// fmt.Scan(&num)
	// nums := make([]int, num)
	// for i := range nums {
	// 	fmt.Scan(&nums[i])
	// }
	scanner := bufio.NewScanner(os.Stdin)
	var num int
	scanner.Scan()
	num, _ = strconv.Atoi(scanner.Text())
	nums := make([]int, num)
	for i := range nums {
		scanner.Scan()
		nums[i], _ = strconv.Atoi(scanner.Text())
	}

	maxDiff := 1 - 10*10*10*10*10*10*10*10*10 - 1
	min := nums[0]

	for i := 1; i < num; i++ {
		diff := nums[i] - min
		if maxDiff < diff {
			maxDiff = diff
		}
		if nums[i] < min {
			min = nums[i]
		}
	}

	fmt.Println(maxDiff)
}

