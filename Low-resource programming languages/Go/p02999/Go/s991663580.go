package main

import "fmt"

func main(){
	var X, A, ans int
	fmt.Scan(&X,&A)

	if X<A {
		ans = 0
	} else {
		ans = 10
	}
	fmt.Printf("%d",ans)
}