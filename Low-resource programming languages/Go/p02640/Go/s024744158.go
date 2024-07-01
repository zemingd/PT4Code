package main

import "fmt"

func main() {
	var X, Y int
	ans := "No"

	fmt.Scan(&X, &Y)

	for i := 0; i <= X; i++ {
		for j := 0; j <= X - i; j++ {
			if (2 * i + 4 * j == Y) {
				ans = "Yes"
			}
		}
	}

	fmt.Println(ans)
}