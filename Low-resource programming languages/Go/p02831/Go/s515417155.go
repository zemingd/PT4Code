package main

import "fmt"

func main() {
	var a,b int
	fmt.Scan(&a,&b)
	
	for i := 1;; i++ {
		if a*i%b == 0 {
			fmt.Println(a*i)
			return
		}
	}
}