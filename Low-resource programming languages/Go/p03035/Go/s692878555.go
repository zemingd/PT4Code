package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func main() {
	input := scanNums(2)
	a := input[0]
	b := input[1]

	if a >= 13 {
		fmt.Println(b)
	} else if a >= 6 {
		fmt.Println(b / 2)
	} else {
		fmt.Println(0)
	}
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

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func scanNums(n int) (nums []int) {
	str := readLine()
	s := strings.Split(str, " ")
	for i := 0; i < n; i++ {
		num, _ := strconv.Atoi(s[i])
		nums = append(nums, num)
	}
	return nums
}

func scanStrings() []string {
	str := readLine()
	s := strings.Split(str, " ")

	return s
}

func abs(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
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
