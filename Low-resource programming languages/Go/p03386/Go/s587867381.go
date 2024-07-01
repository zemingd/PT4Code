package main
import (
	"fmt"
)

func main(){
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	for i:=0; i<k && a+i<=b; i++{
		fmt.Println(a+i)
	}
	for i:=k-1; i>=0 && b-i>=a; i--{
		fmt.Println(b-i)
	}
}