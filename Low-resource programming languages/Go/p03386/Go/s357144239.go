package main
import (
	"fmt"
)

func main(){
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	for i:=0; i<k && a<b; i++{
		fmt.Println(a)
		a++
	}
	/*
	for i:=k; i>=0 && b-i>a; i--{
		fmt.Println(b-i)
	}
	*/
	for i:=b; i>b-k && i>=a; i--{
		defer fmt.Println(i)
	}
}