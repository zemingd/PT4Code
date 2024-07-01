package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	if s[5:7] <= "04" && s[8:10] <= "30" {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}

}
