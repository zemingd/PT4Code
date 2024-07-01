package main

import "fmt"

func main(){
	var a, b int
	fmt.Scan(&a, &b)
	c := a*b
	if c % 2 == 0{
		fmt.Println("Even")
    }else{
		fmt.Println("0dd")
    }
}
