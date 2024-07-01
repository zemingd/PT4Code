package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scan(&k)

	mod := 0
	count := 0
	modMap := map[int]bool{}
	for {
		mod = (mod*10+7) % k
		count++
		if modMap[mod] {
			fmt.Println(-1)
			return
		}
		if mod == 0 {
			fmt.Println(count)
			return
		}
		modMap[mod] = true
	}
}

// 1,	2,	 3,   4,   5
// 101, 202, 303, 404, 505 => 101n
// 7, 77, 777, 7777, 77777 => (10^n - 1)/7
// 101m = (10^n - 1)/7
// m = (10^n - 1)/7k
// m = (10^n - 1)/707

// km = (10^n - 1)/7
// 7km = 10^n - 1
// 7km + 1 = 10^n


