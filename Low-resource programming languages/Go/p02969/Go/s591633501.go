package main

import "fmt"

func main() {
	var r int
	fmt.Scanf("%d",&r)
	cricle(&r)
}

func cricle(r *int) {
	
	var a int 
	a = 3 * *r * *r 
	fmt.Println(a)
}