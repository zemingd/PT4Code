package main

import (
	"fmt"
)

func main() {
	var input string
	fmt.Scan(&input)

	var even int // 最初が１
	var odd int  // 最初が0

	for i, s := range input {
		if i%2 == 0 {
			if s == []rune("0")[0] {
				even += 1
			} else {
				odd += 1
			}
		} else {
			if s == []rune("0")[0] {
				odd += 1
			} else {
				even += 1
			}
		}
	}

	if even > odd {
		fmt.Println(odd)
	} else {
		fmt.Println(even)
	}
}
