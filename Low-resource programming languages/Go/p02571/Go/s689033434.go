package main

import (
	f "fmt"
	"strings"
)

func main() {
	var s, t string
	f.Scan(&s, &t)
	arrS := strings.Split(s, "")
	arrT := strings.Split(t, "")
	ans := len(arrT)

	for j := 0; j <= len(arrS)-len(arrT); j++ {
		diff := 0
		for i := 0; i < len(arrT); i++ {
			if arrT[i] != arrS[j+i] {
				diff++
			}
		}
		if ans > diff {
			ans = diff
		}
	}
	f.Println(ans)
}
