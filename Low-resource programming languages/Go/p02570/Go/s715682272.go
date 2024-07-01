package main

import "fmt"

func main() {
	var d, t, s int
	fmt.Scan(&d, &t, &s)
	if(d > t*s){
		fmt.Println("No")
	}else{
		fmt.Println("Yes")
	}
}
