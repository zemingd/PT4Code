package main

import "fmt"

func main(){
	var s string
	fmt.Scanf("%s", &s)
	if 'a' <= s[0] && s[0]<= 'z'{
		fmt.Println("a")
	}else{
		fmt.Println("A")
	}
}