package main

import "fmt"

func main() {
	var d, n int
	fmt.Scan(&d, &n)
	switch d {
	case 0:
		if n == 100 {
			fmt.Printf("%d", n+1)
		} else {
			fmt.Printf("%d", n)
		}
	case 1:
		if n == 100 {
			fmt.Printf("%d", (n+1)*100)
		} else {
			fmt.Printf("%d", n*100)
		}
	case 2:
		if n == 100 {
			fmt.Printf("%d", (n+1)*10000)
		} else [
			fmt.Printf("%d", n*10000)
		]
	}
}
