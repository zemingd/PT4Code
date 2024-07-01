package main

import "fmt"

func main() {
	// Code for A - Dividing a String
	var S string
	fmt.Scan(&S)

	var count int
	var j int
	var T string
	for i := 0; i < len(S)-1; i++ {

		j = 1
		for {
			T = S[i+1 : i+1+j]
			//fmt.Println(S[i:i+1], T, count)
			if S[i:i+1] != T {
				count += 2
				i += j
				break
			}
			j++
		}
	}

	fmt.Println(count)
}
