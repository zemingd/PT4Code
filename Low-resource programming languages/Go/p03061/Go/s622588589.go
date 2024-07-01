package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	_ = scanNums()
	as := scanNums()
	n := len(as)

	ans := 1

	for i := 0; i < n; i++ {
		arr1 := as[:i]
		arr2 := as[i+1:]

		gcd1 := gcds(arr1...)
		gcd2 := gcds(arr2...)

		tmp := gcd(gcd1, gcd2)

		ans = Max(ans, tmp)
	}

	fmt.Println(ans)
}

func gcds(nums ...int) int {
	if len(nums) == 0 {
		return 0
	}

	if len(nums) == 1 {
		return nums[0]
	}

	tmp := gcd(nums[0], nums[1])

	for i := 2; i < len(nums); i++ {
		tmp = gcd(tmp, nums[i])
	}

	return tmp
}

func oneInt() int {
	var a int
	fmt.Scan(&a)
	return a
}
func oneStr() string {
	var a string
	fmt.Scan(&a)
	return a
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func scanNums() (nums []int) {
	s := nextLine()
	numStr := strings.Split(s, " ")

	for _, n := range numStr {
		i, _ := strconv.Atoi(n)
		nums = append(nums, i)
	}
	return nums
}

func Max(nums ...int) int {
	if len(nums) == 0 {
		return 0
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func gcd(a, b int) int {
	if a == 0 {
		return b
	}
	if b == 0 {
		return a
	}
	return gcd1(a, b)
}

func gcd1(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd1(b, a%b)
}
