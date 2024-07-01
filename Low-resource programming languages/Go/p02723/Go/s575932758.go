package main

import (
	"fmt"
)

func main() {

	var S string

	fmt.Scan(&S)

	if S[2:3]==S[3:4] && S[4:5]==S[5:6]{

		fmt.Println("Yes")
	}else{

		fmt.Println("No")
	}

}