package main

import "fmt"

func main(){
	var n, m int
	fmt.Scan(&n)

	ans := "No"
	for i:=0; i<=25; i++{
		m = n-4*i
		if m >= 0 {
			if m%7 == 0 {
				ans = "Yes"
			}
		}
	}

	fmt.Println(ans)
}