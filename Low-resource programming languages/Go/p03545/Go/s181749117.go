package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	solveC()
}

var sc = bufio.NewScanner(os.Stdin)

func read_line() string {
	sc.Scan()
	return sc.Text()
}

func solveC() {
	line := read_line()
	nums := make([]int, 4, 4)
	num, _ := strconv.Atoi(line)
	nums = toNums(num, nums)
	// for _, v := range nums {
	// 	fmt.Println(v)
	// }
	ops := make([]int, 0, 3)
	dfs(0, nums, ops...)
	fmt.Println("")
}

func dfs(index int, nums []int, ops ...int) bool {
	if index == 3 {
		// cal
		if isSeven(nums, ops) {
			//print
			for i := 0; i < 3; i++ {
				fmt.Printf("%d", nums[i])
				if ops[i] == 0 {
					fmt.Print("+")
				} else {
					fmt.Print("-")
				}
			}
			fmt.Printf("%d=7", nums[index])
			return true
		} else {
			return false
		}
	} else {
		ops = append(ops, 0)
		if dfs(index+1, nums, ops...) {
			return true
		}
		ops = append(ops[:index], 1)
		if dfs(index+1, nums, ops...) {
			return true
		}
	}
	return false
}

func isSeven(nums, ops []int) bool {
	sum := nums[0]
	for i, op := range ops {
		if op == 0 {
			sum += nums[i+1]
		} else {
			sum -= nums[i+1]
		}
	}
	if sum == 7 {
		return true
	} else {
		return false
	}
}

func toNums(n int, nums []int) []int {
	index := 0
	for n != 0 {
		nums[len(nums)-index-1] = n % 10
		n /= 10
		index++
	}
	return nums
}
