package main

import "fmt"

func main(){
	var S string
	var ans int
	fmt.Scan(&S)
	for i:=0; i < len(S) / 2; i++ {
		if S[i:i+1] != S[len(S)-i-1:len(S)-i] {
			ans++
		}
	}
	fmt.Println(ans)
}
