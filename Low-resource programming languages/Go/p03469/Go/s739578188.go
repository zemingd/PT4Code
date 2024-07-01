package main

import(
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	
	fmt.Printf("2018%s",S[4:])
}