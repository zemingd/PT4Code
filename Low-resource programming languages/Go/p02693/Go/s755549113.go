package main

import (
	"fmt"
)

func main() {

	var K,A,B int

	fmt.Scan(&K,&A,&B)


	for i:=A;i<=B;i++{

		if i%K==0{

			fmt.Println("OK")

			return
		}

	}

	fmt.Println("NG")

}