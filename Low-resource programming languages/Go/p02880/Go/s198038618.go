package main

import (
	"fmt"
	"os"
)

func main() {
	var a int
	fmt.Scan(&a)
	if a > 81 {
		fmt.Println("No")
		os.Exit(0)
	} else {
		for i := 1; i < 10; i++ {
			if a%i == 0 && a/i < 10 {
				fmt.Println("Yes")
				os.Exit(0)
			}
		}
	}
	fmt.Println("No")
}
