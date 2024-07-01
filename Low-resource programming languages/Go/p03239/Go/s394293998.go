package main

import (
	"fmt"
	"math"
)

func main() {
	N, T := scanInt2()
	Cs, Ts := scanInts2(N)

	c := 1001
	for i := 0; i < N; i++ {
		if Ts[i] <= T {
			c, _ = getMin(c, Cs[i])
		}
	}
	if c == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(c)
	}
}

/*
	Snippets
*/
func scanInt() (a int) {
	fmt.Scan(&a)
	return
}
func scanInt2() (a, b int) {
	fmt.Scan(&a, &b)
	return
}
func scanInt3() (a, b, c int) {
	fmt.Scan(&a, &b, &c)
	return
}
func scanInts(n int) []int {
	A := make([]int, n)
	for i := 0; i < n; i++ {
		A[i] = scanInt()
	}
	return A
}
func scanInts2(n int) ([]int, []int) {
	A, B := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		A[i], B[i] = scanInt2()
	}
	return A, B
}
func scanInts3(n int) ([]int, []int, []int) {
	A, B, C := make([]int, n), make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		A[i], B[i], C[i] = scanInt3()
	}
	return A, B, C
}
func scanMatrix(n, m int) [][]int {
	A := make([][]int, n)
	for i := 0; i < n; i++ {
		A[i] = scanInts(m)
	}
	return A
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
