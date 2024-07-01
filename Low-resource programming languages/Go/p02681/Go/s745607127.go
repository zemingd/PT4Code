package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	for i, v := range S {
		if T[i] != byte(v) {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
