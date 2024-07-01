package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)

	for _, v := range n {
		if string(v) == "7" {
			fmt.Print("Yes")
			return
		}
	}
	fmt.Print("No")
}
