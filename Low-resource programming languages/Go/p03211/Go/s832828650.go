package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	min := 1 << 62
	for i := 0; i < len(S)-2; i++ {
		x := int(S[i]-'0')*100 + int(S[i+1]-'0')*10 + int(S[i+2]) - '0'
		if min > Abs(753-x) {
			min = Abs(753 - x)
		}
	}
	fmt.Println(min)
}

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
