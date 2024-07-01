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
	fmt.Println(A)

	a := gcd(A[0], A[1])
	b := gcd(A[1], A[2])
	c := gcd(A[2], A[0])

	for i := 3; i < N; i++ {
		if A[i]%a != 0 {
			break
		} else {
			fmt.Println(a)
			os.Exit(0)
		}
	}

	for i := 3; i < N; i++ {
		if A[i]%b != 0 {
			break
		} else {
			fmt.Println(b)
			os.Exit(0)
		}
	}

	fmt.Println(c)
}
