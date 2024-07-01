package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	s := stdin.Text()
	cnt := 0
	l := len(s)
	for i := 0; i < l; i++ {
		if s[i] == '1' {
			cnt++
		}
	}

	fmt.Println(cnt)
}
