package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	S, _ := r.ReadString('\n')
	S = strings.TrimRight(S, " \t\n")
	T, _ := r.ReadString('\n')
	T = strings.TrimRight(T, " \t\n")

	if len(S)+1 == len(T) && strings.HasPrefix(T, S) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
