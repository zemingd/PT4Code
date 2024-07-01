package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)
	
	for i := 0; i < 3; i++ {
		if n[i] == '7' {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}