package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	s, _ := r.ReadString('\n')
	t, _ := r.ReadString('\n')
	S := strings.TrimRight(s, " \t\n")
	T := strings.TrimRight(t, " \t\n")

	count := 0

	for i := 0; i < len(S); i++ {
		if S[i] != T[i] {
			count++
		}
	}
	fmt.Println(count)

}
