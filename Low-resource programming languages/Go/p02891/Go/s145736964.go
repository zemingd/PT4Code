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

	runes := []rune(problem)
	for i := 0; i < totalIndex; i++ {
		if runes[i] == runes[i+1] {
			answer++
			i++
		}
	}
	// fmt.Printf("1StringDuplicate: %d\n", answer)
	// fmt.Println(problem[totalIndex-1 : totalIndex])

	var problem2 string
	fmt.Scan(&problem2)
	answerCount, _ := strconv.Atoi(problem2)

	// 1文字の場合
	if len(problem) == 1 {
		fmt.Println(answerCount - 1)
		return
	}

	// 入力ループした際に最初と最後の文字が重複したらカウントする
	if (problem[0:1] == problem[totalIndex:]) &&
		(problem[0:1] != problem[totalIndex-1:totalIndex]) &&
		(len(problem) >= 3) &&
		(answerCount > 1) {
		answer++
		fmt.Println(answer*answerCount - 1)
		return
	}

	fmt.Println(answer * answerCount)

}
