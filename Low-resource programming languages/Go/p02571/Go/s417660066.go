package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	sliceS := strings.Split(s, "")
	sliceT := strings.Split(t, "")
	i := 0
	ans := len(sliceT)
	count := 0
	for {
		count = 0
		for j := 0; j < len(sliceT); j++ {
			if sliceS[j+i] != sliceT[j] {
				count++
			}
		}
		if ans > count {
			ans = count
		}
		i++
		if len(sliceS)-len(sliceT)*i < 0 {
			break
		}
	}
	fmt.Print(ans)

}
