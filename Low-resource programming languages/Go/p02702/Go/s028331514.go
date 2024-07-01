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

	for mask := 0; mask < (1 << uint64(length)); mask++ {
		oneCount := bits.OnesCount(uint(mask))
		if oneCount > 2 || oneCount == 0 {
			continue
		}
		for k := 0; k < length; k++ {
			if (mask >> uint64(k)) & 1 == 1 {
				if oneCount == 1 {
					i, j = k, k
				}
				i = j
				j = k
			}
		}
		num, _ := strconv.Atoi(S[i:j+1])
		if num % 2019 == 0 {
			total++
		}
	}
	fmt.Println(total)
}