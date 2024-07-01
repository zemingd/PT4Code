package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	ans := make([]string, n)
	var flag int
	mid := n / 2

	if n%2 == 0 {
		flag = -1
	} else {
		flag = 1
	}

	for i := 0; i < n; i++ {
		var tmp string
		fmt.Scanf("%s", &tmp)
		if i%2 == 0 {
			ans[mid-flag*(i/2)] = tmp
		} else {
			ans[mid+flag*(i/2+1)] = tmp
		}
	}
	fmt.Println(strings.Join(ans, " "))
}
