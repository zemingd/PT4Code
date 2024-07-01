package main

import (
	"fmt"
	"strconv"
)

func in_array(ar []int, n int) bool {
	for _, v := range ar {
		for _, vv := range []rune(strconv.Itoa(n)) {
			kk, _ := strconv.Atoi(string(vv))
			if v == kk {
				return true
			}
		}
	}
	return false
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	d := make([]int, k)

	for i:=0; i<k; i++ {
		fmt.Scan(&d[i])
	}

	for i:=n; i<=10000; i++ {
		if in_array(d, i) {
			continue
		} else {
			fmt.Println(i)
			break
		}
	}
}