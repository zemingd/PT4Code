package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := next()
	ans := ""
	for i := 0; i < len(s); i += 2 {
		ans += string(s[i])
	}
	fmt.Println(ans)
}
