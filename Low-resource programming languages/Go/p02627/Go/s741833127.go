package main

import "fmt"
import "strings"

func main() {
	var in string
	fmt.Scan(&in)

	capi := "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//notcapi := "abcdefghijklmnopqrstuvwxyz"

	if strings.Contains(capi, in) {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
