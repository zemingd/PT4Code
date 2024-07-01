package main

import (
	"fmt"
)

func main(){
	var max, max_i, ans int
	var abc = make([]int, 3)
	fmt.Scan(&abc[0], &abc[1], &abc[2])
	for i:=0; i<3; i++{
		if abc[i] > max{
			max = abc[i]
			max_i = i
		}
	}
	for i:=0; i<3; i++{
		if i == max_i{
			ans += 10*abc[i]
		} else {
			ans += abc[i]
		}
	}
	fmt.Println(ans)
}