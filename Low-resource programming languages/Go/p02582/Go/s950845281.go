package main

import (
	"fmt"
)

func main(){
	var s string
	fmt.Scan(&s)

	count:=0
	for index,v := range(s){
		if string(v) =="R"{
			count ++
		}else if index!=0 && count!=0{
			break
		}
	}
	fmt.Println(count)
}
