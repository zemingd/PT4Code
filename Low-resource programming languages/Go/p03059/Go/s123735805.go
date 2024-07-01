package main

import(
	"fmt"
)

func main() {
	var a,b,t int
	fmt.Scan(&a,&b,&t)
	
	sum := t / a * b;
	fmt.Println(sum)
}