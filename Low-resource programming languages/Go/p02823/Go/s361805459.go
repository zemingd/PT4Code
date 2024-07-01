package main

import "fmt"

func main(){
	var n,a,b int
	fmt.Scan(&n,&a,&b)
	if (b-a)%2 == 0{
//fmt.Println("even")
		fmt.Println(b-int((b+a)/2))
	} else {
//fmt.Println("odd")
		if a-1 >= n-b {
			fmt.Println((n-b)+1+(n-int(a+n-b+n+1)/2))
/*fmt.Println("b")
fmt.Println(n-b)
fmt.Println("1")
fmt.Println(n-int(a+n-b+n+1)/2)
fmt.Println(a+n-b+n+1)*/
		} else {
			fmt.Println((a-1)+1+(int(b-a)/2))
/*fmt.Println("a")
fmt.Println(a-1)
fmt.Println("1")
fmt.Println((int(b-a)/2))
fmt.Println(b-a)*/
		}
	}
}
