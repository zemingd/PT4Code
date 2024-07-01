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

//Block is hoge
type Block struct {
	r []int
	g []int
	b []int
}

func main() {
	Block := new(Block)
	oneStr()
	for i, v := range oneStr() {
		if v == 'R' {
			Block.r = append(Block.r, i)
		} else if v == 'G' {
			Block.g = append(Block.g, i)
		} else {
			Block.b = append(Block.b, i)
		}
	}

	var sum int
	for _, r := range Block.r {
		for _, g := range Block.g {
			for _, b := range Block.b {
				sample := (r + g + b) / 3
				if sample != r && sample != g && sample != b {
					sum++
				}
			}
		}
	}
	fmt.Print(sum)
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
