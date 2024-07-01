package main

import "fmt"

func main() {
	var S string
	if _, err := fmt.Scan(&S); err != nil {
		return
	}
	length := len(S)
	halfLength := length / 2
	count := 0
	SRune := []rune(S)
	for i := 0; i < halfLength; i++ {
		if SRune[i] != SRune[length-1-i] {
			count++
		}
	}
	fmt.Println(count)
}
