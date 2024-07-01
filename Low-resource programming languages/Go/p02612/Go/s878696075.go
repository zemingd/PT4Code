package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	if (n % 1000) == 0 {
		fmt.Println(0)
		return
	}
	fmt.Println(1000 - (n % 1000))

}
