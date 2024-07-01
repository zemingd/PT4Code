package main

import (
	"fmt"
)

func main() {


	var X int

	fmt.Scan(&X)

	sum := 100

	cnt :=0

	for{

		sum =  int(float64(sum) + float64(sum)*0.01)
		cnt++


		if sum >=X{
			break

		}

	}
	fmt.Println(cnt)
}