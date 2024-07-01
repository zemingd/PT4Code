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

var sc = bufio.NewScanner(os.Stdin)

func main() {
	str := oneStr()

	nums := []int{}


	for _,s := range str {
		n := string(s)
		i, _ := strconv.Atoi(n)
		nums = append(nums,i)
	}

	if len(nums) == 1{
		fmt.Println(0)
		return
	}

	if len(nums) == 2{
		if nums[0] == nums[1]{
			fmt.Println(1)
		}else{
			fmt.Println(0)
		}
		return
	}

	ans := 0
	for i := range nums[0:len(nums)-2]{
		if nums[i] == nums[i+1]{
			if nums[i+1] != nums[i+2] {
				nums[i] = int(math.Abs(float64(nums[i+1] - 1)))
			}else{
				nums[i+1] = int(math.Abs(float64(nums[i+1] - 1)))
			}
			ans++
			continue
		}

		if nums[i+1] == nums[i+2]{
			nums[i+2] = int(math.Abs(float64(nums[i+1] - 1)))
			ans++
		}
	}

	fmt.Println(ans)
		//sub := str[i:i+3]
		//
		//if sub[0] == sub[1]{
		//	change := int(math.Abs(float64(sub[1] -1)))
		//	str[i] = strconv.Itoa(change)
		//}
		//fmt.Println(nums)
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

func scanStrings() (strs []string) {
	s := nextLine()
	list := strings.Split(s, " ")
	strs = append(strs, list...)
	return strs
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
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
