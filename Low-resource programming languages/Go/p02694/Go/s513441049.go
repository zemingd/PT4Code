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
      year++
		now *= 1.01
		now = math.Floor(now) 
		if(int(now)>=X){
			fmt.Println(year)
			return
		}
	}

}