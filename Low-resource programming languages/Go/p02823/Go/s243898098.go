package main

import "fmt"

func main(){
	var n,a,b int
	fmt.Scan(&n,&a,&b)
	if (b-a)%2 == 0{
//fmt.Println("even")
		fmt.Println(b-int((b+a)/2))
	} else {
//fmt.Println("odd")
		if n-a >= b-1 {
			fmt.Println(b-1)
		} else {
			fmt.Println(n-a)
		}
	}
}
