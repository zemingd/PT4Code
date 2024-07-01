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
	stones := scanNums(N)

	// stones := make([]int, 0)
	notFoundNumber := 0
	count := 0
	found := false

	for i := 1; i <= N; i++ {
		found = false
		for idx, v := range stones {
			if i == v {
				stones = stones[idx+1:]
				count += idx
				found = true
				break
			}
		}
		if found == false {
			count += len(stones)
			notFoundNumber = i
			break
		}
	}

	if notFoundNumber == 1 {
		count = -1
	}

	fmt.Println(count)
}
