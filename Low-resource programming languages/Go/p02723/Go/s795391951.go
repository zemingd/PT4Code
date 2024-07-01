package main

import "fmt"

func main() {
	var S, ans string
	fmt.Scan(&S)
	if S[2] == S[3] && S[4] == S[5] {
		ans = "Yes"
	} else {
		ans = "No"
	}
	fmt.Println(ans)
}