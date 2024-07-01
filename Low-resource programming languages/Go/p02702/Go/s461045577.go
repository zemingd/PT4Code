package main

import (
	"fmt"
	"strconv"
)

func main() {
	var S string
	fmt.Scan(&S)

	var cnt int

	for i := 0; i < len(S)-3; i++ {
		tmp, _ := strconv.Atoi(S[i:j])
		if tmp%5 != 0 {
			continue
		}
		for j := i + 4; j <= len(S); j++ {
			num, _ := strconv.Atoi(S[i:j])
			if num%2019 == 0 {
				cnt++
			}
		}
	}

	fmt.Println(cnt)
}
