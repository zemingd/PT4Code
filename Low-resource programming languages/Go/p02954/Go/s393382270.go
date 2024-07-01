package main

import (
	"fmt"
)

func main() {

	var s string
	var arr []string
	var num []int
	fmt.Scan(&s)

	for _, r := range s {
		arr = append(arr, string(r))

	}

	for l := len(arr); l > 0; l-- {
		num = append(num, 1)
	}

	for m := 5; m > 0; m-- {

		for i, a := range arr {
			if a == "R" {
				num[i+1] += num[i]
				num[i] = num[i] - num[i]
			} else {
				num[i-1] += num[i]
				num[i] = num[i] - num[i]
			}

		}

	}

	for _, output := range num {
		fmt.Println(output)

	}

}
