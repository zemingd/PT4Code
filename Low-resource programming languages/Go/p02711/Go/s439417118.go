package main

import "fmt"

func main() {
	var ss string
	fmt.Scan(&ss)
	for _, s := range ss {
		if s == '7' {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}