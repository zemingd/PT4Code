package main

import "fmt"

func main(){
	var h,n,temp,sum int
	fmt.Scan(&h,&n)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&temp)
		sum += temp
	}
	if h <= sum {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
