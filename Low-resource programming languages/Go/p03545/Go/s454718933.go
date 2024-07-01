package main

import (
	"fmt"
	"strconv"
)

func main() {
	var S string
	fmt.Scan(&S)

	N := [4]int{}
	for i, s := range S {
		N[i], _ = strconv.Atoi(string(s))
	}

	for i := 0; i < (1 << 3); i++ {
		ans := N[0]
		sign := [3]string{}
		for j := 0; j < 3; j++ {
			if i&(1<<j) > 0 {
				ans += N[j+1]
				sign[j] = "+"
			} else {
				ans -= N[j+1]
				sign[j] = "-"
			}
		}

		if ans == 7 {
			fmt.Printf("%d%s%d%s%d%s%d=7\n", N[0], sign[0], N[1], sign[1], N[2], sign[2], N[3])
			return
		}
	}
}
