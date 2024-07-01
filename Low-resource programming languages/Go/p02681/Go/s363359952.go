package main

import "fmt"

func main(){
	var s,t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	n := len(s)
	if n + 1 == len(t) && s[0:n] == t[0:n] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
