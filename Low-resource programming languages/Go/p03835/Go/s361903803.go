package main

import "fmt"

func main(){
	var K, S int
	fmt.Scan(&K, &S)
	var count int
	for i := 0; i <= K; i++ {
		for j := 0; j <= K; j++ {
			k := S - i - j
			if 0 <= k && k <= K{
				count++
			}
		}

	}
	fmt.Println(count)
}
