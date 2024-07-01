package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ng := make(map[int]bool)
	var d int
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		ng[d] = true
	}

	for i := n; i <= 100000; i++ {
		ok := true
		s := strconv.Itoa(i)
		for j := 0; j < len(s); j++ {
			d := int(s[j] - '0')
			if ng[d] {
				ok = false
				break
			}
		}
		if ok {
			fmt.Println(i)
			return
		}
	}
}
