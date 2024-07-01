package main

import "fmt"

func main() {
	var sheep, wolf int

	fmt.Scanf("%d %d", &sheep, &wolf)

	if sheep > wolf {
		fmt.Println("safe")
	} else {
		fmt.Println("unsafe")
	}
}