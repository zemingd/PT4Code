package main

import "fmt"

func main(){
	var S string;
	fmt.Scan(&S);
	
	ans := 0;
	for i:=0 ; i < len(S)/2 ; i++ {
		if S[i] != S[len(S)-1-i]{
			ans++;
		}
	}
	fmt.Println(ans);
}