package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	a := make(map[int]bool, n)
	for i := 0; i < n; i++ {
		var num int
		fmt.Scan(&num)
		if a[num] {
			a[num] = false
		} else {
			a[num] = true
		}
	}

	var cnt int
	for _, v := range a {
		if v {
			cnt++
		}
	}
	fmt.Println(cnt)
}
