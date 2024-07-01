package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	s, _ := reader.ReadString('\n')
	s = strings.TrimSpace(s)

	t, _ := reader.ReadString('\n')
	t = strings.TrimSpace(t)

	substring := t[:len(t)-1]

	if !strings.Contains(s, t) {
		if substring == s {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		fmt.Println("No")
	}
}
