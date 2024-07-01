package main

import "fmt"

func main() {
	var h, a, tec int
	fmt.Scan(&h, &a)

	count := 0
	for i := 0; i < a; i++ {
		fmt.Scan(&tec)
		h -= tec
		count++
		if h <= 0 {
			fmt.Println("Yes")
		} else if a == i+1 && h > 0 {
			fmt.Println("No")
		}
	}
}
