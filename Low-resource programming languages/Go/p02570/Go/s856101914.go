package main

import "fmt"

func main() {
	var d, t, s int
	fmt.Scanf("%d %d %d", &d, &t, &s)

	if d <= t*s {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
