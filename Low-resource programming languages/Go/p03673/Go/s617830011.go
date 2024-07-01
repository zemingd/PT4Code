package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}
	ans := ""
	i := len(as) - 1
	for i >= 0 {
		ans += strconv.Itoa(as[i]) + " "
		i -= 2
	}
	if i == -1 {
		i = 0
	} else {
		i = 1
	}
	for i < len(as) {
		ans += strconv.Itoa(as[i]) + " "
		i += 2
	}
	fmt.Println(ans)
}
