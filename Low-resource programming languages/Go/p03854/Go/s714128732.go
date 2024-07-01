package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	for len(S) > 0 {
		if S[len(S)-5:] == "erase" || S[len(S)-5:] == "dream" {
			S = S[:len(S)-5]
			continue
		}
		if S[len(S)-6:] == "eraser" {
			S = S[:len(S)-6]
			continue
		}
		if S[len(S)-7:] == "dreamer" {
			S = S[:len(S)-7]
			continue
		}
		fmt.Println("NO")
		return
	}
	fmt.Println("YES")

}
