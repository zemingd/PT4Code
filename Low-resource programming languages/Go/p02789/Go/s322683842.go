package main

import (
	"fmt"
)

func main() {
	var mm,nn string
	fmt.Scanf("%s %s", &mm, &nn)
	var result string = "No"
	if mm == nn {
		result = "Yes"
	}
	fmt.Printf("%s\n", result)
}
