package main

import(
	"fmt"
	"strconv"
) 

func main(){
	var S string
	fmt.Scan(&S)
	
	var m int
	m, _ = strconv.Atoi(S[5:7])

	if m < 5 {
		fmt.Println("Heisei")
	} else{
		fmt.Println("TBD")
	}
}