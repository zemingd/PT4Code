package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)

	var res bool

	res = n[0] == n[1] && n[0] == n[2]

	if res {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
