package main

import "fmt"

func main(){
	var S string

	fmt.Scan(&S)
	if S[2] == S[3] && S[4] == S[5] {
		fmt.Println("Yes")
	}else {
		fmt.Println("No")
	}
}