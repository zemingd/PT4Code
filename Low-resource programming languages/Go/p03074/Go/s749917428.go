package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	var line string
	fmt.Scan(&line)
	arr := make([]int, 0)
	cnt := 1
	if string(line[0]) == "0" {
		arr = append(arr, 0)
	}
	for i := 0; i < n - 1; i++ {
		s1, s2 := line[i], line[i + 1]
		if s1 == s2 {
			cnt++
		} else {
			arr = append(arr, cnt)
			cnt = 1
		}
	}
	arr = append(arr, cnt)
	count, mx := 0, math.MinInt32
	count = arr[0]
	for i := 1; i < len(arr); i += 2 {
		count += arr[i]
		if i + 1 < len(arr) {
			count += arr[i + 1]
		}
		if i >= 2 * k + 1 {
			count -= arr[i - (2 * k + 1)]
			count -= arr[i - (2 * k + 1) + 1]
		}
		mx = max(mx, count)
	}
	mx = max(mx, count)
	fmt.Println(mx)
}

func max(x, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}