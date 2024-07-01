package main

import "fmt"

func main() {
	var num int
	fmt.Scan(&num)
	if num % 9 == 0{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}