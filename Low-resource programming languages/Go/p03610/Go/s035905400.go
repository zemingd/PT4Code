package main

import "fmt"

func main() {
	var str string

	fmt.Scanf("%s", &str)
	strRune := []rune(str)

	for i := 0; i < len(str); i += 2 {
		fmt.Print(string(strRune[i]))
	}
	fmt.Print("\n")
}
