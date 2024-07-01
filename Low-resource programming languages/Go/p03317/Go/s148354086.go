package main

import (
	"fmt"
)

func main() {
	var sequenceLength int
	var elementRange int
	fmt.Scan(&sequenceLength, &elementRange)

	sequences := make([]int, sequenceLength)
	for i := 0; i < sequenceLength; i++ {
		fmt.Scan(&sequences[i])
	}

	if sequenceLength == elementRange {
		fmt.Println(1)
		return
	}

	if sequenceLength%(elementRange-1) == 0 {
		fmt.Println(sequenceLength / (elementRange - 1))
		return
	}

	fmt.Println(sequenceLength/(elementRange-1) + 1)
}
