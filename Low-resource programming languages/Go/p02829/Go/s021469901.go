package main

import (
		"fmt"
)

func main() {
		var a, b int
		fmt.Scan(&a, &b)

		sum := a + b

		if sum == 3 {
				fmt.Println(3)
				return
		}

		if sum == 4 {
				fmt.Println(2)
				return
		}

		fmt.Println(1)
}
