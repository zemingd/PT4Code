package main

import "fmt"

func main() {
	var S string
	var T string

	fmt.Scan(&S)
	fmt.Scan(&T)

	if(T[:len(T)-1]==S){
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}