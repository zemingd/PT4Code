package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	for i := 1; i < 10; i++ {
		for k := 1; k < 10; k++ {
			if i*k == N {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}
