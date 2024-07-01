package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n, k int
	var ans int
	var s string
	//input
	fmt.Scan(&n, &k)
	d := make([]string, k)
	for i := 0; i < k; i++ {
		fmt.Scan(&d[i])
	}
	ans = n
	//process
	for true {
		for i := 0; i < k; i++ {
			s = strconv.Itoa(ans)
			if strings.Contains(s, d[i]) {
				break
			} else if i == k-1 {
				fmt.Println(ans)
				os.Exit(0)
			}
		}
		ans++
	}
}
