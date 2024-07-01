package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	if S[0] == '7' || S[1] == '7' || S[2] == '7' {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
