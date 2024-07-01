package main

import (
	"fmt"
	"math"
)

const n = 100003

func min(x, y int) int {
	if x <= y {
		return x
	}
	return y
}

func findMin(nums []int) int {
	m := n
	for _, v := range nums {
		if v < m {
			m = v
		}
	}
	return m
}

func findPrime(x int) int {
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		nums[i] = i + 2
	}

	primes := make([]int, 0)
	for true {
		p := findMin(nums)

		if p >= x {
			return p
		}
		if p > int(math.Sqrt(n)) {
			break
		}
		primes = append(primes, p)
		i := 0
		for i < len(nums) {
			if nums[i]%p == 0 {
				nums = append(nums[:i], nums[i+1:]...)
				continue
			}
			i++
		}
	}
	for _, v := range nums {
		primes = append(primes, v)
	}
	for _, v := range primes {
		if v >= x {
			return v
		}
	}
	return -1
}

func main() {
	var x int
	fmt.Scan(&x)

	fmt.Println(findPrime(x))
}
