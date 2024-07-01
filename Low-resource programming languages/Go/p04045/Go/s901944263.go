package main

import (
	"fmt"
	"strings"
	"strconv"
)

func in_array(ar []int, n int) bool {
	narr := strings.Split(strconv.Itoa(n), "")
	for _, vv := range narr {
		for _, v := range ar {
			kk, _ := strconv.Atoi(vv)
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
		}
		fmt.Println(i)
		break
	}
}