package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ds := make([]string, k)
	for i := 0; i < k; i++ {
		fmt.Scan(&ds[i])
	}

	for i := n; i < n*10; i++ {
		flg := true
		str := strconv.Itoa(i)

		for _, v := range ds {
			if strings.Contains(str, v) {
				flg = false
				break
			}
		}

		if flg {
			fmt.Println(i)
			break
		}
	}
}
