package main

import (
	"fmt"
)


func main(){
	var cost int
	fmt.Scanf("%d",&cost)
	if cost%1000==0{
		fmt.Println(0)
	}else{
		fmt.Println(1000-cost%1000)
	}

}
