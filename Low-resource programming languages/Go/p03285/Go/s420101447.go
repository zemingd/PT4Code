package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i < 26; i++ {
		if 4*i == n {
			fmt.Println("Yes")
			return
		}
		for j := 0; j < 15; j++ {
			if 7*j == n {
				fmt.Println("Yes")
				return
			}
			if 4*i+7*j == n {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}
