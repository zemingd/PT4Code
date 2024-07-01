package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	w := strings.Split(s, "")
	l := len(s)
	var ans int
	for _, T := range strings.Split(t, "") {
		for i := 0; true; i++ {
			ans++
			if T == w[ans%l] {
				break
			}
			if i == l {
				fmt.Println(-1)
				return
			}
		}
	}
	fmt.Println(ans + 1)
}
