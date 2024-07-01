package main

import (
	"fmt"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	ans := len(T)
	for i := range S[:len(S)-len(T)] {
		tmp := 0
		for j, t := range T {
			if string(S[i+j]) != string(t) {
				tmp += 1
			}
		}
		if ans > tmp {
			ans = tmp
		}
	}
	fmt.Println(ans)
}
