package main

import (
	"fmt"
)

func main() {
	var N string
	fmt.Scan(&N)

	res := "No"
	if N[0:1] == "7" || N[1:2] == "7" || N[2:3] == "7" {
		res = "Yes"
	}

	fmt.Println(res)
}
