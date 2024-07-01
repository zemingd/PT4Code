package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)

	var input string
	fmt.Scan(&input)
	inputRune := []rune(input)

	lines := make([]int, 0)
	for i := 0; i < n; i++ {
		if len(lines) == 0 || inputRune[i-1] != inputRune[i] {
			lines = append(lines, 0)
		}
		lines[len(lines)-1] += 1
	}

	if inputRune[0] == []rune("0")[0] {
		lines = append([]int{0}, lines...)
	}

	lineLength := len(lines)

	// indexが0の時を求める
	var result int
	for j := 0; j <= k*2; j++ {
		if j >= lineLength {
			break
		}

		result += lines[j]
	}

	output := result
	preValue := result

	// indexが1以上の時を求める
	for i := 1; (i+k)*2 < lineLength; i++ {
		result := preValue

		// 前のやつを引く
		for j := 2 * (i - 1); j < 2*i; j++ {
			result -= lines[j]
		}

		// 次のやつを引く
		for j := 2*(i+k-1) + 1; j <= 2*(i+k); j++ {
			if j >= lineLength {
				break
			}

			result += lines[j]
		}

		if result > output {
			output = result
		}
		preValue = result

		if 2*(i+k) > lineLength {
			break
		}
	}

	fmt.Println(output)
}
