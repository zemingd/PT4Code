package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)

	ans := "Good"
	if S[0] == S[1] || S[1] == S[2] || S[2] == S[3] {
		ans = "Bad"
	}
	fmt.Println(ans)
}
