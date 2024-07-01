package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strings"
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

func ReadInt() int {
	var n int
	fmt.Scan(&n)
	return n
}

func ReadIntF(f io.Reader) int {
	var n int
	fmt.Fscanf(f, "%d", &n)
	return n
}

func ReadInts(n int) []int {
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}
	return nums
}

func ReadIntsF(f io.Reader, n int) []int {
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscanf(f, "%d", &nums[i])
	}
	return nums
}

func ReadWord(f io.Reader) string {
	var str string
	fmt.Scan(&str)
	return str
}

func ReadWordF(f io.Reader) string {
	var str string
	fmt.Fscanf(f, "%s", &str)
	return str
}

func ReadLine() string {
	r := bufio.NewReader(os.Stdin)
	str, _ := r.ReadString('\n')
	str = strings.Trim(str, "\n")
	return str
}

func ReadLineF(f io.Reader) string {
	r := bufio.NewReader(f)
	str, _ := r.ReadString('\n')
	str = strings.Trim(str, "\n")
	return str
}

func ReadLines(n int) []string {
	r := bufio.NewReader(os.Stdin)
	lines := make([]string, n)
	for i := 0; i < n; i++ {
		lines[i], _ = r.ReadString('\n')
		lines[i] = strings.Trim(lines[i], "\n")
	}
	return lines
}

func ReadLinesF(f io.Reader, n int) []string {
	r := bufio.NewReader(f)
	lines := make([]string, n)
	for i := 0; i < n; i++ {
		lines[i], _ = r.ReadString('\n')
		lines[i] = strings.Trim(lines[i], "\n")
	}
	return lines
}

func Factorial(n int) int {
	ret := 1
	for i := 2; i < n; i++ {
		ret *= i
	}
	return ret
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

func AllComb(n int) [][]int {
	n2 := 1 << uint(n)
	ret := make([][]int, n2)

	for i := 0; i < n2; i++ {
		pat := make([]int, n)
		for j := 0; j < n; j++ {
			pat[j] = i >> uint(j) & 1
		}
		ret[i] = pat
	}
	return ret
}

func AllCombChan(n int, c chan []int) {
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

func PermuteInts(nums []int) [][]int {
	n := Factorial(len(nums))
	ret := make([][]int, 0, n)
	permuteInts(nums, &ret)
	return ret
}

func permuteInts(nums []int, ret *[][]int) {
	*ret = append(*ret, makeCopy(nums))

	n := len(nums)
	p := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		p[i] = i
	}
	for i := 1; i < n; {
		p[i]--
		j := 0
		if i%2 == 1 {
			j = p[i]
		}

		nums[i], nums[j] = nums[j], nums[i]
		*ret = append(*ret, makeCopy(nums))
		for i = 1; p[i] == 0; i++ {
			p[i] = i
		}
	}
}

func makeCopy(nums []int) []int {
	return append([]int{}, nums...)
}

// }}}

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)

	a := ReadInts(x)
	b := ReadInts(y)
	c := ReadInts(z)

	s := make([]int, 0, x*y)
	for i := 0; i < x; i++ {
		for j := 0; j < y; j++ {
			s = append(s, a[i]+b[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(s)))

	ls := make([]int, 0, k*z)
	for i := 0; i < MinInts(k, x*z); i++ {
		for j := 0; j < z; j++ {
			ls = append(ls, s[i]+c[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(ls)))

	for i := 0; i < k; i++ {
		fmt.Println(ls[i])
	}
}
