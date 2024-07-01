package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	buf := make([]byte, 0) //ここのサイズは何でもよさそう
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)

	_, m := oneInt(), oneInt()
	lMax := 0
	rMin := 1000000

	for i := 0; i < m; i++ {
		input := scanNums(2)
		lMax = max(lMax, input[0])
		rMin = min(rMin, input[2])
	}
	if rMin-lMax+1 < 0 {
		fmt.Println(0)
	} else {
		fmt.Println(rMin - lMax + 1)
	}
}

func oneInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func oneStr() string {
	sc.Scan()
	return sc.Text()
}

func scanNums(len int) (nums []int) {
	for i := 0; i < len; i++ {
		nums = append(nums, oneInt())
	}
	return nums
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

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

func sortAsc(a []int) []int {
	sort.Ints(a)
	return a
}

func sortDesc(a []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	return a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	if a == 0 && b == 0 {
		return 0
	}
	return a * b / gcd(a, b)
}

func cumSum(nums []int) []int {
	sums := []int{0}

	for i := 0; i < len(nums); i++ {
		sums = append(sums, sums[i]+nums[i])
	}
	return sums
}
