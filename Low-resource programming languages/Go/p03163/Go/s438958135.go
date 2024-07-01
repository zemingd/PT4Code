package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

// {{{
// source: https://github.com/raahii/algo
func MaxInts(nums []int) (int, int) {
	var maxIdx, maxVal int
	for i, e := range nums {
		if i == 0 || e > maxVal {
			maxIdx = i
			maxVal = e
		}
	}
	return maxVal, maxIdx
}

func MinInts(nums []int) (int, int) {
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

func ReadLines(f *os.File, n int) []string {
	var lines []string
	reader := bufio.NewReader(f)
	for i := 0; i < n; i++ {
		bytes, _, err := reader.ReadLine()
		if err != nil {
			break
		}
		lines = append(lines, string(bytes))
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

// }}}

func main() {
	N, W := ReadInt(os.Stdin), ReadInt(os.Stdin)
	w, v := make([]int, N), make([]int, N)
	for i := 0; i < N; i++ {
		w[i], v[i] = ReadInt(os.Stdin), ReadInt(os.Stdin)
	}

	dp := Ints2d(N+1, W+1)
	for i := 0; i < N; i++ {
		for j := 0; j < W+1; j++ {
			if j < w[i] {
				dp[i+1][j] = dp[i][j]
			} else {
				dp[i+1][j], _ = MaxInts([]int{
					dp[i][j],
					dp[i][j-w[i]] + v[i],
				})
			}
		}
	}
	fmt.Println(dp[N][W])
}