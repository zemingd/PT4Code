package main

import "fmt"

func main() {
	var n, r int
	fmt.Scanf("%d %d", &n, &r)
	if n >= 10 {
		fmt.Println(r)
	} else {
		fmt.Println(100*(10-n) + r)
	}
}
