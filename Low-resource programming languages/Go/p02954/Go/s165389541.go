package main

import (
	"bufio"
	"fmt"
	"os"
)

func equals(array1 []int, array2 []int) bool {
	for i := 0; i < len(array1); i++ {
		if array1[i] != array2[i] {
			return false
		}
	}

	return true
}

func proceed(a1, a2, a3 []int) ([]int, []int, []int) {
	return a2, a3, a1
}

func answer(text string, N int, array1 []int, array2 []int, array3 []int) []int {
	for i := 0; i <= N+1; i++ {
		for p := 0; p < N; p++ {
			array2[p] = 0
			if p > 0 && text[p-1] == 'R' {
				array2[p] += array1[p-1]
			}
			if p < N-1 && text[p+1] == 'L' {
				array2[p] += array1[p+1]
			}
		}

		if equals(array2, array3) {
			if i%2 == 1 {
				return array2
			} else {
				return array1
			}
		}

		array1, array2, array3 = proceed(array1, array2, array3)
	}

	return array1
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	text := scanner.Text()
	N := len(text)
	array1 := make([]int, N)
	array2 := make([]int, N)
	array3 := make([]int, N)

	for i := 0; i < N; i++ {
		array1[i] = 1
		array2[i] = 0
		array3[i] = 0
	}

	result := answer(text, N, array1, array2, array3)

	for i := 0; i < N; i++ {
		fmt.Print(result[i])
	}
}
