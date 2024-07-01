package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	sl := make([]map[int]int, n)

	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		sl[i] = map[int]int{}
		for j := 0; j < a; j++ {
			var x, y int
			fmt.Scan(&x, &y)
			sl[i][x-1] = y
		}
	}

	var max int
	for bit := 0; bit < (1 << uint(n)); bit++ {
		ok := true
		for i := 0; i < n; i++ {
			if (bit>>uint(i))&1 == 1 {
				for k, v := range sl[i] {
					if v != ((bit >> uint(k)) & 1) {
						ok = false
						break
					}
				}
			}
		}
		if ok {
			cnt := onesCount(bit)
			if cnt > max {
				max = cnt
			}
		}
	}
	fmt.Println(max)
}

func onesCount(bit int) int {
	var num int
	for ; bit != 0; bit &= bit - 1 {
		num++
	}
	return num
}
