package main

import "fmt"

func main()  {
	var A, B int
	fmt.Scan(&A, &B)
	if A % 2 == 0 || B % 2 == 0{
		fmt.Println("No")
	}else{
		fmt.Println("Yes")
	}
}