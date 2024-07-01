package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	str := ""
	if a < b {
		for i := 0; i < b; i++ {
			str += string(rune(int('0') + a))
		}
	} else {
		for i := 0; i < a; i++ {
			str += string(rune(int('0') + b))
		}
	}
	fmt.Printf("%s\n", str)
}
