package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N)
	fmt.Scan(&M)
	if N==M{
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
