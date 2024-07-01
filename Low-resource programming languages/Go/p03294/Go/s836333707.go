package main

import "fmt"

func main(){
	var n, a, ans int
	fmt.Scan(&n)
	for i:= 0; i<n; i++{
		fmt.Scan(&a)
		ans += a
	}
	fmt.Println(ans-n)
}
