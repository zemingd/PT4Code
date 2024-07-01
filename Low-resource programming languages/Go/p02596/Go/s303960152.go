package main

import (
	"fmt"
	"strconv"
)

func main() {
	var ans, k int
	kk := "7"
	fmt.Scan(&k)
	ans = -1

	for ii := 1; ii <= 6; ii++ {
		i, _ := strconv.Atoi(kk)
		if i%k == 0 {
			ans = ii
			break
		}
		kk += "7"

	}
	fmt.Println(ans)
}
