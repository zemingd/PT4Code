package main

import "fmt"

func main(){
	var s string
	fmt.Scan(&s)
	if s[0:1] == s[1:2] && s[0:1] == s[2:3]{
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
