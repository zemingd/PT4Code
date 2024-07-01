package main

import (
	"fmt"
)

func main() {
	var n, m int64
	fmt.Scan(&n)
	fmt.Scan(&m)
	a := scanNums(n)

	// 偶数なので X = ak/2 * (2p + 1)
	// XはM以下かつa1/2, a2/2, ...　の全てで割り切れて、その結果が奇数
	//　→　Xはa1/2, a2/2, ...の最小公倍数の奇数倍でM以下の数
	var i int64

	for i = 0; i < n; i++ {
		a[i] /= 2
	}
	var lcmA int64 = lcm(a[0], a[1])
	for i = 2; i < n; i++ {
		lcmA = lcm(lcmA, a[i])
	}

	fmt.Println((m/lcmA + 1) / 2)
}

func gcd(a, b int64) int64 {
	if a < b {
		a, b = b, a
	}
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int64) int64 {
	return a * b / gcd(a, b)
}

func scanNums(len int64) (nums []int64) {
	var num int64
	var i int64
	for i = 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
