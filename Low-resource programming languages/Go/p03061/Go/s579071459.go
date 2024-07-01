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
	n := oneInt()
	as := scanNums(n)
	ans := calc(n, as)
	fmt.Println(ans)

}

func calc(n int, as []int) int {
	L := make([]int, n+1)
	for i := 0; i < n; i++ {
		L[i+1] = gcd(L[i], as[i])
	}

	R := make([]int, n+1)
	for i := n - 1; i >= 0; i-- {
		R[i] = gcd(R[i+1], as[i])
	}

	ans := 0

	for i := 0; i < n; i++ {
		ans = max(ans, gcd(L[i], R[i+1]))
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

func scanStrings() (nums []string) {
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
