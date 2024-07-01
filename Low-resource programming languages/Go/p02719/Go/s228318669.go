package main

import "fmt"

func main(){
	var n,m int
	fmt.Scan(&n,&m)
	a := n - (n/m)*m
	if a < m/2 {
		fmt.Println(a)
	} else {
		fmt.Println(m-a)
	}
}
