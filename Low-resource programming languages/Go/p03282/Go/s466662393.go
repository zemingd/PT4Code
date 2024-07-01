package main

import (
	"fmt"
	"math"
)

var (
	s string
	k int64
)

func main() {
	fmt.Scanln(&s)
	fmt.Scanf("%d\n",&k)
	for _,x := range s {
		v := x-48
		if v==1{
			k-=1
			if k<=0 {
				fmt.Println(1)
				break
			}
		}	else {
			k-=int64(math.Pow(float64(v),5*math.Pow(10,15)))
			if k<=0 {
				fmt.Println(v)
				break
			}
		}
	}
}


