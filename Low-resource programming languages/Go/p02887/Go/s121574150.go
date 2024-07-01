package main

import "fmt"

func main() {
	var n,out int
	var s string
	fmt.Scanf("%d",&n)
	fmt.Scanf("%s",&s)
	out = 1
	for i:=1;i<n;i++{
		if s[i-1:i] != s[i:i+1]{
			out++
		}
	}
	fmt.Println(out)
}
