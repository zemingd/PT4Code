package main

import "fmt"

func main() {
	var a string
	_, err := fmt.Scanf("%s", &a)
	if err != nil {
		panic(err)
	}
	if a == "AAA" || a == "BBB" {
		fmt.Printf("No\n")
	}else {
		fmt.Printf("Yes\n")
	}
}
