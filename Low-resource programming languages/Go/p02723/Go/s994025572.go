package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text := stdin.Text()

	if len(text) != 6 {
		panic(fmt.Errorf("unexpected text"))
	}

	a := strings.Split(text[2:4], "")
	b := strings.Split(text[4:6], "")

	if a[0] == a[1] && b[0] == b[1] {
		fmt.Print("Yes")
		return
	}
	fmt.Print("No")
}