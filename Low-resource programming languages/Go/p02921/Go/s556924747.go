package main

import "fmt"

func main() {
	var S,T string
	_,_ = fmt.Scan(&S ,&T)
	var ans = 0
	for i := 0; i < 3; i++{
		if S[i] == T[i]{
			ans++
		}
	}
	fmt.Println(ans)

}
