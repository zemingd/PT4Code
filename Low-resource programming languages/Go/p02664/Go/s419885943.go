package main

import "fmt"

func main() {
	var T string
	fmt.Scan(&T)
	for i := 0; i < len(T); i++ {
		if T[i] == '?' {
			fmt.Print("D")
		} else {
			fmt.Print(string(T[i]))
		}
	}
	fmt.Println()
}
