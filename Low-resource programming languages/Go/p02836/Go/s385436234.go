package main

import (
	"fmt"
)

func main() {

	// 読み込み数取得
	var input string
	fmt.Scan(&input)

	max := len(input)
	count := max / 2

	result := 0

	for i := 0; i < count; i++ {
		if input[i:i+1] != input[max-i-1:max-i] {
			result++
		}
	}

	fmt.Printf("%d", result)

}