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
		if a-1 >= n-b {
			fmt.Println((n-b)+1+(n-int(a+n-b+n)/2))
			//fmt.Println("b")
		} else {
			fmt.Println((a-1)+1+(int(b-a)/2))
			//fmt.Println("a")
		}
	}
}
