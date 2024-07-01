package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	result := "WA"
	nowC := 0
	if string(s[0]) == "A" {
		count := 0
		for i := 2; i < len(s)-1; i++ {
			if string(s[i]) == "C" {
				count++
				nowC = i
			}
		}
		if count != 1 {
			fmt.Println("WA")
			return

		}
		for i := 1; i < len(s); i++ {
			if s[i] > 122 && i != nowC {
				result = "WA"
				break
			}
		}
		result = "AC"

	} else {
		result = "WA"
	}
	fmt.Println(result)

}
