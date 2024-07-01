package main

import (
	"fmt"
)

func toLower(char byte) string {
	if char == []byte("A")[0] {
		return "a"
	} else if char == []byte("B")[0] {
		return "b"
	}
	return "c"
}

func main() {
	var n, k int
	var s string
	fmt.Scanf("%d %d", &n, &k)
	fmt.Scanf("%s", &s)

	fmt.Print(s[0 : k-1])
	fmt.Print(toLower(s[k-1]))
	fmt.Print(s[k:])

}
