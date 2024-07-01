package main

import (
	"fmt"
	"strings"
)

func dayDream(input string) string {
	rdream := Reverse("dream")
	rdreamer := Reverse("dreamer")
	rerase := Reverse("erase")
	reraser := Reverse("eraser")
	rinput := Reverse(input)
	for len(rinput) > 0 {
		if strings.HasPrefix(rinput, rdream) || strings.HasPrefix(rinput, rerase) {
			rinput = rinput[5:]
		} else if strings.HasPrefix(rinput, reraser) {
			rinput = rinput[6:]
		} else if strings.HasPrefix(rinput, rdreamer) {
			rinput = rinput[7:]
		} else {
			return "NO"
		}
	}

	return "YES"
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func main() {
	var input string
	fmt.Scan(&input)
	fmt.Println(dayDream(input))

}
