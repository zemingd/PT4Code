package main

import (
	"fmt"
	"math"
)

func main() {
	N := scanInt()
	A := scanInts(N)

	res := 0
	for i := 0; i < N; i++ {
		res += A[i] - 1
	}
	fmt.Println(res)
}

/*
	Snippets
*/
func scanInt() (n int) {
	fmt.Scan(&n)
	return
}
func scanInts(n int) []int {
	N := make([]int, n)
	for i := 0; i < n; i++ {
		N[i] = scanInt()
	}
	return N
}
func scanInts2(n int) ([]int, []int) {
	N1, N2 := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		N1[i] = scanInt()
		N2[i] = scanInt()
	}
	return N1, N2
}
func scanInts3(n int) ([]int, []int, []int) {
	N1, N2, N3 := make([]int, n), make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		N1[i] = scanInt()
		N2[i] = scanInt()
		N3[i] = scanInt()
	}
	return N1, N2, N3
}
func scanMatrix(n, m int) [][]int {
	M := make([][]int, n)
	for i := 0; i < n; i++ {
		M[i] = scanInts(m)
	}
	return M
}
func scanStr() (s string) {
	fmt.Scan(&s)
	return
}
func scanStrs(n int) []string {
	S := make([]string, n)
	for i := 0; i < n; i++ {
		S[i] = scanStr()
	}
	return S
}
func getAbs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func getPow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}
func getMin(nums ...int) (int, int) {
	if len(nums) == 0 {
		panic("funciton getMin() requires at least one argument.")
	}
	min := nums[0]
	pos := 0
	for i := 1; i < len(nums); i++ {
		if min > nums[i] {
			min = nums[i]
			pos = i
		}
	}
	return min, pos
}
func getMax(nums ...int) (int, int) {
	if len(nums) == 0 {
		panic("funciton getMax() requires at least one argument.")
	}
	max := nums[0]
	pos := 0
	for i := 1; i < len(nums); i++ {
		if max < nums[i] {
			max = nums[i]
			pos = i
		}
	}
	return max, pos
}
func getGcd(a, b int) int {
	if b == 0 {
		return a
	}
	return getGcd(b, a%b)
}
func getLcm(a, b int) int {
	return a * b / getGcd(a, b)
}

/*
	Sort template
*/
type sortType struct {
	a int
	b int
}
type byA []sortType

func (s byA) Len() int {
	return len(s)
}
func (s byA) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
func (s byA) Less(i, j int) bool {
	return s[i].a < s[j].a
}
