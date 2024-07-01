package main

import "fmt"

func main() {
	var text string
	fmt.Scanf("%s", &text)

	if text[2] == text[3] && text[4] == text[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
