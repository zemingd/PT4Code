package main

import (
	"fmt"
)

func main(){
	var k int
	fmt.Scan(&k)

	if k%2==0 || k < 7{
		fmt.Println("-1")
		return
	}

	count:=0
	for i:=7; ; i= i*10+7{
		count++
		if i%k == 0{
			break
		}
	}
	fmt.Println(count)

	return
}