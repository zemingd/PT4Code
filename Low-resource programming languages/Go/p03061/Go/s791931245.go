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
	n := oneInt()
	as := scanNums()

	//ans := 1

	amap := map[int]int{}

	for i := 0; i < n; i++ {
		amap[i] = as[i]
	}

	max := Max(as...)

	kouho := []int{max}
	anss := []int{1}

	//for i := 1; i < max; i++ {
	//	kouho = append(kouho, i)
	//}

	for len(kouho) >= 1 {
		warenai := 0
		i := kouho[0]
		for _, v := range amap {
			if v%i != 0 {
				warenai++
			}
			if warenai >= 2 {
				break
			}
		}

		//fmt.Println(kouho, warenai)

		if warenai == 1 || warenai == 0 {
			anss = append(anss, i)
		}

		//fmt.Println(kouho)

		if warenai >= 2 {
			for j := i - 1; j > 0; j-- {
				if gcd(j, i) != 1 {
					kouho = append(kouho, j)
					break
				}
			}
		}

		if len(kouho) == 1 {
			break
		}

		kouho = kouho[1:]

	}

	fmt.Println(Max(anss...))
}

func unset(s []int, i int) []int {
	if i >= len(s) {
		return s
	}
	return append(s[:i], s[i+1:]...)
}

func gcds(nums ...int) int {
	if len(nums) == 2 {
		return gcd(nums[0], nums[1])
	}
	tmp := []int{gcd(nums[0], nums[1])}
	tmp = append(tmp, nums[2:]...)
	ans := gcds(tmp...)

	return ans
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

func Max(nums ...int) int {
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
