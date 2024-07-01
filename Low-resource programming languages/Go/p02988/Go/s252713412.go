package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := scanNums(N)

	// fmt.Println(inputs)

	res := 0
	for i := 0; i < len(inputs)-2; i++ {
		a := inputs[i]
		b := inputs[i+1]
		c := inputs[i+2]

		if (a < b && b < c) || (c < b && b < a) {
			// fmt.Println(a, b, c)
			res++
		}
	}
	fmt.Println(res)

}

func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func spritString(input string) (res []string) {
	for i := 0; i < utf8.RuneCountInString(input); i++ {
		res = append(res, input[i:i+1])
	}
	return
}
