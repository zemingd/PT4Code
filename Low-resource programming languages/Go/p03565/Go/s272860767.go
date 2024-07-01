package main

import (
	"fmt"
	"regexp"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	S = replaceAll(S, "?", ".")
	for i := len(S) - 1; i >= len(T) - 1; i-- {
		start, end := i + 1 - len(T), i + 1
		h, s, t := S[:start], S[start:end], S[end:]
		b, _ := regexp.Match(s, []byte(T))
		if b {
			tmp := h + T + t
			fmt.Println(replaceAll(tmp, ".", "a"))
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}

func replaceAll(target, old, new string) string {
	result := ""
	for _, i := range target {
		s := string(i)
		if s == old {
			result += new
		} else {
			result += s
		}
	}
	return result
}