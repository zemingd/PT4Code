package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var d int
	ds := make(map[int]bool, k)
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		ds[d] = true
	}

	for i := n; i < 10000; i++ {
		str := strconv.Itoa(i)

		flg := false
		for k, v := range ds {
			if v {
				if strings.Contains(str, strconv.Itoa(k)) {
					flg = true
					break;
				}
			}
		}

		if !flg {
			fmt.Println(str)
			break
		}
	}
}
