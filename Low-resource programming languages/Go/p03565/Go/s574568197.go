package main

import "fmt"

func main() {
	// Code for C - Dubious Document 2
	var S, T string
	fmt.Scan(&S, &T)

	var flag int
	for i := 0; i < len(S)-len(T)+1; i++ {
		flag = 0
		for j := 0; j < len(T); j++ {
			if S[i+j] == T[j] || S[i+j] == '?' {
				continue
			} else {
				flag = 1
				break
			}
		}

		if flag == 0 {
			//for j := 0; j < len(T); j++ {
			//	S[i+j] = 'a' //T[i+j]
			//}
			//S = S[0:i] + S[i:i+len(T)] + S[i+len(T):len(S)]
			S = S[0:i] + T[0:len(T)] + S[i+len(T):len(S)]
			flag = 2
			break
		}
	}

	if flag == 2 {
		for i := 0; i < len(S); i++ {
			if S[i] == '?' {
				fmt.Printf("%c", 'a')
			} else {
				fmt.Printf("%c", S[i])
			}
		}
		fmt.Println()
	} else {
		fmt.Println("UNRESTORABLE")
	}
}
