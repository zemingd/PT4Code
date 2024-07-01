package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	if s[2:3] == s[3:4] && s[4:5] == s[5:6] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
