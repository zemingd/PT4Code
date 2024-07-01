package main

import "fmt"

func main() {
	var s, t string
	fmt.Scanln(&s)
	fmt.Scanln(&t)

	fmt.Println(logic(s, t))
}

func logic(s, t string) int {
	count := 0
	for i, s := range s {
		if []rune(t)[i] == s {
			count++
		}
	}
	return count
}