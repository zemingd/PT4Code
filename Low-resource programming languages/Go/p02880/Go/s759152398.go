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
	} else {
		for i := 1; i < 10; i++ {
			for j := 1; j < 10; j++ {
				if a%(i*j) == 0 && a/(i*j) < 10 {
					fmt.Println("Yes")
					os.Exit(0)
				}
			}
		}
	}
	fmt.Println("No")
}
