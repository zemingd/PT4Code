package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)
	if int(n[0])-48 == 7 || int(n[1])-48 == 7 || int(n[2])-48 == 7 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}