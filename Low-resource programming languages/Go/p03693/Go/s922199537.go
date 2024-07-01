package main

import "fmt"

func main(){
	var r, g, b int

	fmt.Scanf("%d %d %d", &r, &g, &b)

	amari := (10 * g + b) % 4

	if(amari == 0) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}