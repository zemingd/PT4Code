package main

import (
	"fmt"
)

func main() {

	var S string

	fmt.Scan(&S)
	
	N:= len(S)

	forward := S[:(N-1)/2]

	back := S[(((N-1)/2)+1):]


	if forward ==back{

		fmt.Println("Yes")
	}else{

		fmt.Println("No")
	}



}
