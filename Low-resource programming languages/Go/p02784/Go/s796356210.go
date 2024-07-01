package main

import "fmt"

func main() {
	var h, a, tec int
	fmt.Scan(&h, &a)

	for i := 0; i < a; i++ {
		fmt.Scan(&tec)
		if h == 0 {
			fmt.Println("Yes")
			return
		}

		h -= tec
		if h <= 0 {
			fmt.Println("Yes")
			return
		} else if a == i+1 && h > 0 {
			fmt.Println("No")
		}
	}
}
