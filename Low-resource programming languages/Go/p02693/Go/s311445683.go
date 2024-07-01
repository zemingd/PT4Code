package main

import "fmt"

func main(){
	var k,a,b int
	fmt.Scan(&k)
	fmt.Scan(&a,&b)
	if b-a+1 >= k {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}
}
