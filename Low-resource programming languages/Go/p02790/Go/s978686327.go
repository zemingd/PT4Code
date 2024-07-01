package main

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
)

func solution(a, b int) int {
	ab := make([]int, b)
	ba := make([]int, a)

	// aをb回
	for i := 0; i < b; i++ {
		ab[i] = a
	}
	// bをa回
	for i := 0; i < a; i++ {
		ba[i] = b
	}

	if dictionaryOrder(ab) > dictionaryOrder(ba) {
		return ints2int(ab)
	}
	return ints2int(ba)
}

func ints2int(nums []int) int {
	strs := make([]string, len(nums))

	for i := range nums {
		strs[i] = strconv.Itoa(nums[i])
	}
	ans, _ := strconv.Atoi(strings.Join(strs, ""))
	return ans
}

func dictionaryOrder(nums []int) int {
	var ans int
	l := len(nums)
	for i := 0; i < l; i++ {
		n := nums[i]
		arr := make([]int, len(nums)-i)
		copy(arr, nums[i:])
		a := ascNumber(arr, n) - 1
		if a == 0 {
			ans += 0
		} else {
			ans += a * factorical(l-i-1)
		}
	}
	ans++
	return ans
}

func ascNumber(nums []int, n int) int {
	sort.Ints(nums)
	var i int = 1
	for _, v := range nums {
		if v == n {
			break
		}
		i++
	}
	return i
}

func factorical(n int) int {
	if n == 0 || n == 1 {
		return 1
	}
	return n * factorical(n-1)
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println(solution(a, b))
}
