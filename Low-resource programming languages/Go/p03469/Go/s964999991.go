package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	fmt.Println("2018" + S[4:])
}
