package main

import(
	"fmt"
)

func main(){
	var a,b,c int
	fmt.Scanf("%d",&a)
	fmt.Scanf("%d %d",&b,&c)
	for i := b;i<=c;i++{
		if i % a == 0{
			fmt.Println("OK")
			return 
		}
	}
	fmt.Println("NG")
}