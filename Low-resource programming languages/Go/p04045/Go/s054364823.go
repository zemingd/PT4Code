package main

import (
	"fmt"
	"strings"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	d := make([]int, k)

	for i:=0; i<k; i++ {
		fmt.Scan(&d[i])
	}

	for i:=n; i<100000; i++ {
		count := true
		for _, v := range d {
			if strings.Contains(strconv.Itoa(i), strconv.Itoa(v)) {
				count = false
				break
			}
		}
		if count {
			fmt.Println(i)
			break
		}
	}
}