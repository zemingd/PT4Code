package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	strs := make([]string, k)
	for i := range strs {
		fmt.Scan(&strs[i])
	}
	for i := n; i < 10000; i++ {
		ok := true
		for _, s := range strs {
			if strings.Contains(strconv.Itoa(i), s) {
				ok = false
			}
		}
		if ok {
			fmt.Println(i)
			return
		}
	}
}
