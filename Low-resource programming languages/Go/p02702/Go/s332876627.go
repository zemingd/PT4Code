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

func main() {

	S := strconv.Itoa(oneInt())

	const base = 2019
	seed := base
	var bases []string

	for i := 2; len(strconv.Itoa(seed)) < 100000; i++ {
		bases = append(bases, strconv.Itoa(seed))
		seed = base * i
	}

	sum := 0
	for _, val := range bases {
		count := countSubstring(val, S)
		sum += count
	}

	fmt.Print(sum)
}

func countSubstring(substring string, target string) int {
	count := 0
	for i := 0; len(substring)+i < len(target)+1; i++ {
		if target[i:len(substring)+i] == substring {
			count++
		}
	}
	return count
}

// 重複した要素を削除して返却
func removeDuplicate1(args []string) []string {
	results := make([]string, 0, len(args))
	encountered := map[string]bool{}
	for i := 0; i < len(args); i++ {
		if !encountered[args[i]] {
			encountered[args[i]] = true
			results = append(results, args[i])
		}
	}
	return results
}

func exp(val int) float64 {
	var temp float64
	for index := 1; index <= val; index++ {
		temp += float64(index)
	}
	return temp / float64(val)
}

func searchAbove(slice []int, target int, index int) int {
	for i := index + 1; i < len(slice); i++ {
		v := slice[i]
		if v >= target {
			return i
		}
	}
	return -1
}

var sc = bufio.NewScanner(os.Stdin)

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
