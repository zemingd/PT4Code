package main

import "fmt"

func main(){
	var K, S int
	fmt.Scan(&K, &S)
	var count int
	for i := 0; i <= K; i++ {
		if K > S || K * 3 < S {
			break
		}
		for j := 0; j <= K; j++ {
			if i + j + S == S {
				count++
			} 
		}

	}
	fmt.Println(count)
}
