package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	if t == s[0:len(t)] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
