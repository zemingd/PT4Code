package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N string
	var m int
	ans := 0
	fmt.Scan(&N)

	for i := 0; i < len(N)-3; i++ {
		for j := i + 3; j < len(N); j++ {
			m, _ = strconv.Atoi(N[i : j+1])
			if m%2019 == 0 {
				ans++
			}
		}
	}

	fmt.Println(ans)
}
