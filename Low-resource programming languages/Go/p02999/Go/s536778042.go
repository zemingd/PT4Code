package main

import(
	"fmt"
)

func main(){
	var x,a int
	fmt.Scanln(&x,&a)
	ans:=0
	if x>=a{ans=10}
	fmt.Println(ans)
}