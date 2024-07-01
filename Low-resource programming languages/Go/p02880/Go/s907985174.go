package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	ans := "No"
	for i:=1; i<=9; i++ {
		for j:=1; j<=9; j++ {
			if i*j == a {
				ans = "Yes"
			}
		}
	}
	fmt.Println(ans)
}