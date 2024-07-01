package main

import "fmt"

func main() {

	var N string

	fmt.Scan(&N)

	for i:=0;i<3;i++{
		
		if N[i:i+1]=="7"{


			fmt.Println("Yes")

			return
		}	



	}


	fmt.Println("No")

}