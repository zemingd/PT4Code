package main

import "fmt"

var (
	H int
	W int
)

func main() {
	fmt.Scanln(&H, &W)
	multi := H * W
	result := 0
	if multi%2 == 0 {
		result = multi / 2
	} else {
		result = (multi / 2) + 1
	}
	fmt.Println(result)
}
