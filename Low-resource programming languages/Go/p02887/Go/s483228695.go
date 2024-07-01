package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	var S string
	fmt.Scan(&S)
	s:=[]byte(S)
	y:=1
	for x:=1;x<N;x++{
		if (s[x]!=s[x-1]){
			y+=1
		}
	}
	fmt.Print(y)
}