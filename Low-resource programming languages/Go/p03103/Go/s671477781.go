package main

import (
	"fmt"
)

func scanNums(len int) (nums []int64) {
	var num int64
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func bubbleSort(arr []int64) {
	for i := 0; i < len(arr)-1; i++ {
		for j := 0; j < len(arr)-i-1; j++ {
			if arr[j] > arr[j+1] {
				arr[j], arr[j+1] = arr[j+1], arr[j]
			}
		}
	}
}

func main() {
	var n int
	var m int64
	
	fmt.Scan(&n)
	fmt.Scan(&m)
	x := make(map[int64]int64)
	for i := 0; i < n; i++ {
	    var a, b int64
	    fmt.Scan(&a)
		fmt.Scan(&b)
		x[a] += b
	}
	
	var keys []int64
	for k, _ := range x {
	    keys = append(keys, k)
	}
	bubbleSort(keys)
	
	var c1, c2 int64 = 0, 0
	for _, k := range keys {
	    if x[k] + c1 < m {
	        c1 += x[k]
	        c2 += k * x[k]
	    } else {
	        c2 += k * (m - c1)
	        break
	    }
	}
    fmt.Println(c2)
}
