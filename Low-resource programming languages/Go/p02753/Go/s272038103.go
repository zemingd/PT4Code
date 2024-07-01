package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)

	ans := "Yes"
	if S[0] == S[1] && S[1] == S[2] && S[0] == S[2] {
		ans = "No"
	}

	fmt.Println(ans)
}
