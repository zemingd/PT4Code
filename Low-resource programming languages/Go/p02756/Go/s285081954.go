package main

import (
	"fmt"
)

func main() {
	var S string
	var Q, cnt int
	fmt.Scan(&S, &Q)
	for i := 0; i < Q; i++ {
		var T int
		fmt.Scan(&T)
		switch T {
		case 1:
			cnt++
		case 2:
			var F int
			var C string
			fmt.Scan(&F, &C)
			if cnt%2 == 1 {
				switch F {
				case 1:
					S += C
				case 2:
					S = C + S
				}
			} else {
				switch F {
				case 1:
					S = C + S
				case 2:
					S += C
				}
			}
		}
	}
	if cnt%2 == 1 {
		S = Reverse(S)
	}
	fmt.Println(S)
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
