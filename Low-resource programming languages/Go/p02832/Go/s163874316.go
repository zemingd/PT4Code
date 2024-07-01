package main

import (
	"fmt"
)

func main() {
	var n int64
	fmt.Scan(&n)
	aArray := scanNums(n)

	// n-k個のレンガを砕いた結果、1,2,3,...,kとなればよい
	// 1が見つからない...-1
	// 1が見つかる...それより左は全部砕く
	// 1より右で2を見つけるまで砕く
	// 2より右で3を見つけるまで砕く
	// 以下繰り返し O(n)
	// 最初に見つかった1より右にある1から始めた方がいい場合はない
	var ans int64 = 0
	var notFound bool = true
	var lastFoundIdx int64 = -1
	var finding int64 = 1
	var idx int64
	for idx = 0; idx < n; idx++ {
		if aArray[idx] == finding {
			ans += idx - lastFoundIdx - 1
			lastFoundIdx = idx
			finding++
			notFound = false
		}
	}
	if lastFoundIdx != n-1 {
		ans += n - 1 - lastFoundIdx
	}
	if notFound {
		ans = -1
	}

	fmt.Println(ans)
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
