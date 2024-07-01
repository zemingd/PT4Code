package main

import(
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	
	fmt.Printf("2018%d",S[4:len(S)])
}