package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	var tmp int
	for i:=0; i<N; i++ {
		fmt.Scan(&tmp)
		if(tmp%2 == 0) {
			if(tmp%3 != 0 && tmp%5 != 0) {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("APPROVED")
}