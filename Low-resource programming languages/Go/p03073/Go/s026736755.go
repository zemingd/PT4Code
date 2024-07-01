package main

import (
	"fmt"
	"strconv"
)

func main() {
	var S string
	fmt.Scan(&S)
	diff1 := make([]int, len(S))
	diff2 := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		if i%2 == 0 {
			diff1[i] = 0
			diff2[i] = 1
		} else {
			diff1[i] = 1
			diff2[i] = 0
		}
	}
	diff1_diff := 0
	diff2_diff := 0
	for i := 0; i < len(S); i++ {
		tmp, _ := strconv.Atoi(string(S[i]))
		if diff1[i] != tmp {
			diff1_diff++
		}
		if diff2[i] != tmp {
			diff2_diff++
		}
	}
	if diff1_diff > diff2_diff {
		fmt.Println(diff2_diff)
	} else {
		fmt.Println(diff1_diff)
	}
}