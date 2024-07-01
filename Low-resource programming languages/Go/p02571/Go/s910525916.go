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
	t := next()

	sl := len(s)
	tl := len(t)
	ans := sl
	for i := 0; i < sl-tl; i++ {
		tmp := count(s[i:i+tl], t)
		if tmp < ans {
			ans = tmp
		}
	}

	fmt.Println(ans)
}

func count(s, t string) int {
	ch := len(s)
	for i := 0; i < len(s); i++ {
		if s[i:i+1] == t[i:i+1] {
			ch--
		}
	}
	return ch
}
