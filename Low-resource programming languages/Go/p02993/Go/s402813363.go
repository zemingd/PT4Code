package main

import "fmt"

func main() {
	var input string
	var pre rune
	isGood := true

	fmt.Scan(&input)

	for _, v := range input {
		if pre != v {
			pre = v
		} else {
			isGood = false
			break
		}
	}

	if isGood {
		fmt.Println("Good")
	} else {
		fmt.Println("Bad")
	}
}
