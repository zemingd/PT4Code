package main

import (
	"bufio"
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

func ScanInts(f *os.File, vars ...*int) {
	for i := 0; i < len(vars); i++ {
		fmt.Fscanf(f, "%d", vars[i])
	}
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

func Abs(n int) int {
	if n < 0 {
		return -n
	}

	return n
}

// }}}

func ReadLine(f *os.File) string {
	reader := bufio.NewReader(f)
	bytes, _, _ := reader.ReadLine()

	return string(bytes)
}

type Stack struct {
	data   []rune
	length int
}

func NewStack() *Stack {
	return &Stack{[]rune{}, 0}
}

func (this *Stack) Len() int {
	return this.length
}

func (this *Stack) Peek() rune {
	if this.length == 0 {
		panic("Stack is empty!")
	}
	return this.data[this.length-1]
}

func (this *Stack) Pop() rune {
	if this.length == 0 {
		panic("Stack is empty!")
	}
	v := this.data[this.length-1]
	this.data = this.data[0 : this.length-1]
	this.length--

	return v
}

func (this *Stack) Push(v rune) {
	this.data = append(this.data, v)
	this.length++
}

func main() {
	str := ReadLine(os.Stdin)
	stack := NewStack()
	for _, c := range str {
		if stack.Len() == 0 {
			stack.Push(c)
			continue
		}

		if (c == '1' && stack.Peek() == '0') || (c == '0' && stack.Peek() == '1') {
			stack.Pop()
		} else {
			stack.Push(c)
		}
	}
	fmt.Println(len(str) - stack.Len())
}