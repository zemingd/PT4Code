package main

import "fmt"

func main(){

	var S,T string
	var ans int

	fmt.Scan(&S,&T)

	for i, _ := range S {

		if S[i] == T[i]{
		
		}else{
			ans++
		}

	}

	fmt.Println(ans)
}