package main

import "fmt"

func main(){
	var n int
	fmt.Scan(&n)

	ans := "No"
	for i:=0; i<=20; i++{
		m := n-4*i
		if m > 0 {
			if m%7 == 0 {
				ans = "Yes"
			}
		}
	}

	fmt.Println(ans)
}