package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var N uint64
	var num uint64
	fmt.Scan(&N)
	num = rcrFormula(N)
	str := strconv.FormatUint(num, 36)
	count := countZero(str)
	fmt.Println(count)
}

func rcrFormula(N uint64) uint64 {
	if int(N) < 2 {
		return 2
	}

	return N * rcrFormula(N-2)
}

func countZero(num string) int {
	count := 0
	length := len(num) - 1
	for i := length; 0 <= i; i-- {
		if hasZeroSuffix := strings.HasSuffix(num, "0"); !hasZeroSuffix {
			break
		}
		count++
		num = num[:i]
	}
	return count
}
