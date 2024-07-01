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

	arr0 := as[:n-1]
	ans = Max(ans, gcds(arr0...))
	arr3 := as[1:]
	ans = Max(ans, gcds(arr3...))

	for i := 0; i < n-1; i++ {
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
	tmp := nums[0]
	for _, n := range nums {
		tmp = gcd(n, tmp)
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
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
