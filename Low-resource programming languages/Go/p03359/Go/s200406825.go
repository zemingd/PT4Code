package main

import "fmt"

func main() {
	var a, b int

	fmt.Scanf("%d %d", &a, &b)

	var total int = 0
	for i := 1; i <= 12; i++ {
		if i <= a {
			if i <= b {
				total++
			} else {
				break
			}
		} else {
			break
		}
	}

	fmt.Println(total)
}
