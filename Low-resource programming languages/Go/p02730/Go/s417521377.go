package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	ans := "No"
	first := S[0 : (len(S)-1)/2]
	last := S[(len(S)+3)/2-1 : len(S)]
	if paindrome(S) && paindrome(first) && paindrome(last) {
		ans = "Yes"
	}
	// fmt.Println(S, first, last, (len(S)+1)/2)
	// fmt.Println(paindrome(S), paindrome(first), paindrome(last))
	fmt.Println(ans)
}

func paindrome(s string) bool {
	return s == Reverse(s)
	// slice := strings.Split(s, "")
	// result := true
	// // fmt.Println(len(slice) / 2)
	// if len(slice)%2 == 0 {
	// 	return false
	// }
	// for i := 0; i < (len(slice))/2; i++ {
	// 	fmt.Println(slice[i], slice[len(slice)/2+1+i])
	// 	if slice[i] != slice[len(slice)/2+1+i] {
	// 		result = false
	// 	}
	// }
	// return result
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
