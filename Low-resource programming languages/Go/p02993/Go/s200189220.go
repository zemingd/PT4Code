package main

import (
	"fmt"
)

func main() {
	var s int
	fmt.Scan(&s)
	num = 1000
	
	for i:=0; i<3; i++ {
		if s / num == s % num / (num / 10){
			fmt.Println("Bad")
			return
		}
		num /= 10
	}
	fmt.Println("Good")
}