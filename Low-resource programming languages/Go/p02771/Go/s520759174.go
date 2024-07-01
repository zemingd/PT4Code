package main

import (
	"fmt"
)

func main(){

	var N int
	fmt.Scan(&N)
 
	a := make([]int, N)
	for i := range a {
		fmt.Scan(&a[i])
	}

	judg := true

	for _,number := range a{

		if number % 2 == 0 && (number % 3 == 0 || number % 5 ==0){
			continue
		}else if number % 2 != 0{
			continue
		}
		judg = false
		fmt.Println("DENIED")
		break
	}

	if judg == true{
		fmt.Println("APPROVED")
	}

}