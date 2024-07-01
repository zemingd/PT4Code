package main

import "fmt"

func main(){
	var A, B, X int
	fmt.Scan(&A, &B, &X)
	if X >= A && X <= A+B {
		fmt.Print("YES")
	}else{
		fmt.Print("NO")
	}
}