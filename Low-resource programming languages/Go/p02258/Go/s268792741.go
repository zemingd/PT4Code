package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func orderN2(values []int) int {
	max := -math.MaxInt32
	diff := 0
	for i := 0; i < len(values); i++ {
		base := values[i]
		for j := i + 1; j < len(values); j++ {
			diff = values[j] - base
			if diff > max {
				max = diff
			}
			// fmt.Println("max", max)
		}
	}
	return max
}

func orderN(values []int) int {
	max := -math.MaxInt32
	min := values[0]
	for j := 1; j < len(values); j++ {
		diff := values[j] - min
		if diff > max {
			max = diff
		}

		if values[j] < min {
			min = values[j]
		}
	}
	return max
}

func main() {
	var readCount int
	fmt.Scan(&readCount)
	values := make([]int, readCount)

	sc := bufio.NewScanner(os.Stdin)
	for i := 0; i < readCount; i++ {
		sc.Scan()
		s := sc.Text()
		values[i], _ = strconv.Atoi(s)
	}

	max := orderN(values)
	// max := orderN2(values)
	fmt.Println(max)
}

