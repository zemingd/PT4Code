package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	l := nextLine()
	var head, tail string
	n := len(l)
	if n % 2 == 0 {
		head = l[0:n/2]
		tail = l[n/2:n]
	} else {
		head = l[0:n/2]
		tail = l[n/2+1:n]
	}
	cnt := 0
	for i, v := range(tail) {
		if v != rune(head[n/2-i-1]) {
			cnt = cnt + 1
		}
	}
	fmt.Println(cnt)
}
