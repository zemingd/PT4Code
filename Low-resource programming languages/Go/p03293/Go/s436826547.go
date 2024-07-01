package main

import (
	"fmt"
	"reflect"
	"sort"
	"strings"
)

func rotate(s string) string {
	if s == "" {
		return s
	}
	if len(s) == 1 {
		return s
	}
	b := []rune(s)

	return string(append(b[1:], b[0]))
}

func main() {
	var S, T string

	fmt.Scan(&S)
	fmt.Scan(&T)

	if S == T {
		fmt.Println("Yes")
		return
	}

	if len(S) != len(T) {
		fmt.Println("No")
		return
	}

	as := strings.Split(S, "")
	at := strings.Split(T, "")

	sort.Strings(as)
	sort.Strings(at)

	if !reflect.DeepEqual(as, at) {
		fmt.Println("No")
		return
	}
	for i := 0; i < len([]rune(S)); i++ {
		S = rotate(S)

		if S == T {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}
