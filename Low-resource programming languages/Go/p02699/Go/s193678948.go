package main

import "fmt"

func main() {
	var S, W int
	fmt.Scan(&S, &W)
	if S > W {
		fmt.Println("safe")
	} else {
		fmt.Println("unsafe")
	}

}
