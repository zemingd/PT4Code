package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func countChangingPalindrome(s string) (count int) {
	rns := []rune(s)
	l := len(s)
	for i := 0; i < l/2; i++ {
		if rns[i] != rns[l-1-i] {
			count++
		}
	}
	return
}

func main() {
	s := nextString()
	r := countChangingPalindrome(s)
	fmt.Println(r)
}
