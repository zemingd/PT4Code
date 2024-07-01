package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, N int
	fmt.Scan(&A, &B, &N)

	// 仮に答えの最大値を定義
	var answerMaximum int = 0

	for i := 1; i <= N; i++ {
		var answer int = int(math.Floor(float64(A*i)/float64(B))) - A*int(math.Floor(float64(i)/float64(B)))
		if answer > answerMaximum {
			answerMaximum = answer
		}
	}

	fmt.Println(answerMaximum)
}
