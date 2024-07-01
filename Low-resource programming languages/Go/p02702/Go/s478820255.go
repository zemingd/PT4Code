package main

import (
	"fmt"
	"strconv"
)

func main() {
	var S string
	fmt.Scan(&S)

	var cnt int

	for i := 0; i < len(S); i++ {
		for j := i + 4; j <= len(S); j++ {
			num, _ := strconv.Atoi(S[i:j])
			fmt.Println(num)
			if num%2019 == 0 {
				cnt++
			}
		}
	}

	fmt.Println(cnt)
}
