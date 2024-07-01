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
	s := oneStr()

	ans := calc(s, n)
	fmt.Println(ans)
}

func calc(s string, n int) int {
	ans := 0

	nowStr := string(s[0])
	cnt := []int{0}

	for _, k := range s {
		if string(k) == nowStr {
			cnt[len(cnt)-1] += 1
		} else {
			nowStr = string(k)
			cnt = append(cnt, 1)
		}
	}

	//fmt.Println(sLis)

	for i := 0; i < len(cnt)-1; i++ {
		if string(s[0]) == "#" && i%2 == 0 {
			if cnt[i] > cnt[i+1] && i < len(cnt)-2 {
				cnt[i+2] += cnt[i] + cnt[i+1]
			}
			ans += min(cnt[i], cnt[i+1])
			continue
		}

		if string(s[0]) == "." && i&2 != 0 {
			if cnt[i] > cnt[i+1] && i < len(cnt)-2 {
				cnt[i+2] += cnt[i] + cnt[i+1]
			}
			ans += min(cnt[i], cnt[i+1])
			continue
		}
	}
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
