package main

import (
	"fmt"
	"math"
)
func main(){
	var X int
	fmt.Scan(&X)
	now := 100.0
	year := 0

	for ;;{
		now *= 1.01
		now = math.Trunc(now) 
		if(int(now)>X){
			fmt.Println(year)
			return
		}
		year++
	}


	fmt.Println("NG")
}