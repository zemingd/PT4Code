package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	if S[0] != 'A' {
		fmt.Println("WA")
		return
	}

	cnt := 0
	for i := 1; i < len(S); i++ {
		s := S[i]
		if s < 'a' || 'z' < s {
			if 2 <= i && i <= len(S)-2 && s == 'C' {
				cnt++
			} else {
				fmt.Println("WA")
				return
			}
		}
	}

	if cnt > 1 {
		fmt.Println("WA")
		return
	}

	fmt.Println("AC")
}
