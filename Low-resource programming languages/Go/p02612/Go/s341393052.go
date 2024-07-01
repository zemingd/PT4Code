package main

import "fmt"

func main() {
	n := 0
	fmt.Scanf("%d", &n)
	if n%1000 == 0 {
		fmt.Printf("0")
	} else {
		t := n / 1000
		fmt.Println((t+1)*1000 - n)
	}
}
