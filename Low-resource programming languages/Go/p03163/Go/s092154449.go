package main

import (
	"fmt"
	"os"
	"sort"
)

// {{{
// source: https://github.com/raahii/algo
func MaxInts(nums ...int) int {
	var maxVal int
	for i, e := range nums {
		if i == 0 || e > maxVal {
			maxVal = e
		}
	}
	return maxVal
}

func MaxIntsWithIdx(nums ...int) (int, int) {
	var maxIdx, maxVal int
	for i, e := range nums {
		if i == 0 || e > maxVal {
			maxIdx = i
			maxVal = e
		}
	}
	return maxVal, maxIdx
}

func MinInts(nums ...int) int {
	var minVal int
	for i, e := range nums {
		if i == 0 || e < minVal {
			minVal = e
		}
	}
	return minVal
}

func MinIntsWithIdx(nums ...int) (int, int) {
	var minIdx, minVal int
	for i, e := range nums {
		if i == 0 || e < minVal {
			minIdx = i
			minVal = e
		}
	}
	return minVal, minIdx
}

func SumInts(nums []int) int {
	s := 0
	for _, v := range nums {
		s += v
	}
	return s
}

func SumInts2d(mat [][]int) int {
	s := 0
	for _, nums := range mat {
		for _, v := range nums {
			s += v
		}
	}
	return s
}

func ReverseInts(nums []int) []int {
	rnums := make([]int, len(nums))
	for i := 0; i < len(nums); i++ {
		rnums[len(nums)-1-i] = nums[i]
	}
	return rnums
}

func ExtendInts(nums1 []int, nums2 []int) []int {
	for _, v := range nums2 {
		nums1 = append(nums1, v)
	}
	return nums1
}

func Ints2d(n_rows, n_cols int) [][]int {
	ints := make([][]int, n_rows)
	for i := 0; i < n_rows; i++ {
		ints[i] = make([]int, n_cols)
	}
	return ints
}

func StrInts2d(mat [][]int) string {
	str := ""
	for i := 0; i < len(mat); i++ {
		str += fmt.Sprintf("[%d", mat[i][0])
		for j := 1; j < len(mat[0]); j++ {
			str += fmt.Sprintf(" %d", mat[i][j])
		}
		str += "]"
		if i != len(mat)-1 {
			str += "\n"
		}
	}
	return str
}

func MemsetInts1d(nums []int, val int) {
	for i := range nums {
		nums[i] = val
	}
}

func MemsetInts2d(nums [][]int, val int) {
	for i := range nums {
		for j := range nums[i] {
			nums[i][j] = val
		}
	}
}

func ContainsInt(nums []int, num int) bool {
	sort.Ints(nums)

	s, e := 0, len(nums)
	for {
		if s >= e {
			break
		}

		m := (e + s) / 2
		if nums[m] == num {
			return true
		} else if num > nums[m] {
			s = m + 1
		} else {
			e = m
		}
	}

	return false
}

func UniqInts(nums []int) []int {
	m := make(map[int]struct{}, len(nums))
	for _, n := range nums {
		m[n] = struct{}{}
	}

	unums := make([]int, 0, len(nums))
	for k, _ := range m {
		unums = append(unums, k)
	}

	return unums
}

func ReadInt(f *os.File) int {
	var n int
	fmt.Fscanf(f, "%d", &n)
	return n
}

func ReadInts(f *os.File, n int) []int {
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscanf(f, "%d", &nums[i])
	}
	return nums
}

func ScanInts(f *os.File, vars ...*int) {
	for i := 0; i < len(vars); i++ {
		fmt.Fscanf(f, "%d", vars[i])
	}
}

func ReadLine(f *os.File) string {
	var str string
	fmt.Fscanf(f, "%s", &str)

	return str
}

func ReadLines(f *os.File, n int) []string {
	lines := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Fscanf(f, "%s", &lines[i])
	}

	return lines
}

func ReadWords(f *os.File, n int) []string {
	strs := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Fscanf(f, "%s", &strs[i])
	}
	return strs
}

func Pow(a, n int) int {
	c := 1
	for i := 0; i < n; i++ {
		c *= a
	}
	return c
}

func Abs(n int) int {
	if n < 0 {
		return -n
	}

	return n
}

func Gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return Gcd(b, a%b)
}

func BinComb(n int, c chan []int) {
	n2 := 1 << uint(n)

	for i := 0; i < n2; i++ {
		pat := make([]int, n)
		for j := 0; j < n; j++ {
			pat[j] = i >> uint(j) & 1
		}
		c <- pat
	}
	close(c)
}

// }}}

const MAXN int = 100
const MAXW int = int(1e5) + 1

func main() {
	var N, W int
	fmt.Scan(&N, &W)

	var dp [MAXN][MAXW]int

	var w, v int
	for i := 0; i < N; i++ {
		fmt.Scan(&w, &v)
		for j := 0; j <= W; j++ {
			if j >= w {
				dp[i+1][j-w] = MaxInts(dp[i+1][j-w], dp[i][j]+v)
			}
			dp[i+1][j] = MaxInts(dp[i+1][j], dp[i][j])
		}
	}

	fmt.Println(MaxInts(dp[N][:]...))
}