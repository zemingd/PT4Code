package main

import (
	"fmt"
	)

func main(){
	var N int
	var CMAX, DMAX int
	var Hantei bool
	fmt.Scanf("%d",&N)
	CMAX = 100 / 4
	DMAX = 100 / 7
	//fmt.Printf("CMAX:%d DMAX:%d\n",CMAX,DMAX)
	for i := 0; i < CMAX; i++ {
		for j := 0; j < DMAX; j++ {
			if i*4+j*7 == N {Hantei = true}
		}
	}
	if Hantei == false {
		fmt.Printf("%s\n","No")
	} else { 
	fmt.Printf("%s\n","Yes") 
	}
}