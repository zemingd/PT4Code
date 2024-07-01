package main

import (
	"fmt"
	"math"
	"os"
	"sort"
)

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return nums
}

func gcd(a, b int) int {
	for b != 0 {
		rem := math.Mod(float64(a), float64(b))
		a = b
		b = int(rem)
	}

	return a
}

func main() {
	var N int
	fmt.Scan(&N)

	A := scanNums(N)

	sort.Sort(sort.Reverse(sort.IntSlice(A)))

	if N <= 2 {
		if A[0] > A[1] {
			fmt.Println(A[0])
			os.Exit(0)
		}
		fmt.Println(A[1])
		os.Exit(0)
	}

	a := gcd(A[0], A[1])
	b := gcd(A[1], A[2])
	c := gcd(A[2], A[0])

	m := 0

	countA := 0
	countB := 0
	countC := 0

	for i := 0; i < N; i++ {
		if countA > 1 {
			a = 0
			break
		}
		if A[i]%a != 0 {
			countA += 1
		}
	}
	m = a

	for i := 0; i < N; i++ {
		if countB > 1 {
			b = 0
			break
		}
		if A[i]%b != 0 {
			countB += 1
		}
	}
	if b > m {
		m = b
	}

	for i := 0; i < N; i++ {
		if countC > 1 {
			c = 0
			break
		}
		if A[i]%c != 0 {
			countC += 1
		}
	}
	if c > m {
		m = c
	}

	fmt.Println(m)
}
