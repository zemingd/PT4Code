package main

import (
	"fmt"
	"strconv"
)

func main() {
	var problem string
	answer := 0
	fmt.Scan(&problem)
	totalIndex := len(problem) - 1

	// // 最初と最後の文字が同じならカウント
	// if problem[0:1] == problem[totalIndex:] {
	// 	answer++
	// }

	runes := []rune(problem)
	for i := 0; i < totalIndex; i++ {
		if runes[i] == runes[i+1] {
			answer++
			i++
		}
	}
	// fmt.Printf("1StringDuplicate: %d\n", answer)

	var problem2 string
	fmt.Scan(&problem2)
	answerCount, _ := strconv.Atoi(problem2)

	fmt.Println(answer * answerCount)
}
