package main

import (
	"fmt"
	"math/bits"
	"strconv"
)

func main() {
	var (
		S string
		total, i, j int
	)
	fmt.Scan(&S)
	length := len(S)

	for mask := 0; mask < (1 << uint(length)); mask++ {
		oneCount := bits.OnesCount(uint(mask))
		if oneCount != 2{
			continue
		}
		for k := 0; k < length; k++ {
			if (mask >> uint(k)) & 1 == 1 {
				i = j
				j = k
			}
		}
		num, _ := strconv.Atoi(S[i:j+1])
		if num % 2019 == 0  || 1 <= i+1 && i+1 <= j+1 && j+1 <= length{
			total++
		}
	}
	fmt.Println(total)
}