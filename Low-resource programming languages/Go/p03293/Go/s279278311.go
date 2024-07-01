package main

import "fmt"

func main(){
	var S, T string
	fmt.Scan(&S, &T)
	ans := "No"
	for i := 0 ; i < len(T) ; i++ {
		tmp := S[len(S)-1:]
		S = tmp + S[:len(S)-1]
		// fmt.Println(S, tmp)

		if S == T {
			ans = "Yes"
			break
		}
	}
	fmt.Println(ans)
}