// WEWEWEEEWWWE
package main

import (
	"fmt"
)

func main() {
	var size int
	var input string

	fmt.Scanf("%d", &size)
	fmt.Scanf("%s", &input)

	hoge := make([]int, size)

	x := 0
	for i := 0; i < size; i++ {
		hoge[i] = x
		if input[i] == 'W' {
			x++
		}
	}

	fuga := make([]int, size)

	y := 0
	for i := size - 1; i >= 0; i-- {
		fuga[i] = y
		if input[i] == 'E' {
			y++
		}
	}

	result := 9223372036854775807
	for i := 0; i < size; i++ {
		if result > hoge[i]+fuga[i] {
			result = hoge[i] + fuga[i]
		}
	}
	fmt.Printf("%d\n", result)
}
