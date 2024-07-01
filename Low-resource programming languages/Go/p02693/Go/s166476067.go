package main

import "fmt"

func main() {

	var k,a,b int
	fmt.Scan(&k,&a,&b)

	if k == 1{
		fmt.Println("OK")
		return
	}
	if (b-a)/k > 0{
		fmt.Println("OK")
		return
	}
fmt.Println("NG")
}