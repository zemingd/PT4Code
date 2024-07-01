package main

import "fmt"

func main() {
	var a,b int
	fmt.Scan(&a, &b)

	for i := 1; i <= 40; i++ {
		if i == 1 {
			if b - (a*i) <= 0 {
				fmt.Println(i)
				return
			}
			
		}
		if b - (a*i-1)  <= 0 {
			fmt.Println(i)
			return
		}
	}
}
