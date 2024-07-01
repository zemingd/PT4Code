package main

import (
	"fmt"
)

func main() {
	a := 40
	j := 0
	k := 0
	result := "NO"

	fmt.Scan(&a)

	for j <= a/4 {
		for k <= a/7 {
			if (4*j + 7*k) == a {
				result = "OK"
			}
			k += 1
		}
		j += 1
	}

	if result == "OK" {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
