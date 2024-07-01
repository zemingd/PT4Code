package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func nextLine() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, e := strconv.Atoi(nextLine())
	if e != nil {
		panic(e)
	}
	return i
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		num = nextInt()
		nums = append(nums, num)
	}
	return
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

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func sumSlice(nums []int) int {
	sum := 0
	for _, n := range nums {
		sum += n
	}
	return sum
}

func binarySearch(target int, list []int) int {
	left := 0
	right := len(list) - 1
	mid := (left + right) / 2

	for {
		if list[mid] < target {
			left = mid + 1
		} else {
			right = mid
		}
		mid = (left + right) / 2
		if left >= right {
			break
		}
	}
	return mid
}

func main() {
	scanner.Split(bufio.ScanWords) // switch to separating by space
	// scanner.Buffer([]byte{}, 1000000009) // switch to read large size input
	N := nextInt()
	coordinates := scanNums(N)
	coordinates = append(coordinates, 0)
	costs := make([]int, N+1)

	prev := 0
	cost := 0
	for i, c := range coordinates {
		cost = abs(c - prev)
		costs[i] = cost
		prev = c
	}

	totalCost := sumSlice(costs)

	difference := 0
	reference := 0

	for i := 0; i < N; i++ {
		if i == 0 {
			reference = 0
		} else {
			reference = coordinates[i-1]
		}

		difference -= costs[i]
		difference -= costs[i+1]
		difference += abs(coordinates[i+1] - reference)

		fmt.Println(totalCost + difference)
		difference = 0
	}
}
