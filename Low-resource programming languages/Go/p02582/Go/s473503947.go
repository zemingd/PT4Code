package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	if S[0] == 82 && S[1] == 82 && S[2] == 82 {
		fmt.Println(3)
	} else if S[0] == 82 && S[1] == 82 && S[2] != 82 {
		fmt.Println(2)
	} else if S[0] != 82 && S[1] == 82 && S[2] == 82 {
		fmt.Println(2)
	} else if S[0] == 82 || S[1] == 82 || S[2] == 82 {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}
