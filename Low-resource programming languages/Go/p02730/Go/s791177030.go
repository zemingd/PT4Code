package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {

	sc.Scan()
	return sc.Text()
}

func rev(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

func main() {
	sc.Split(bufio.ScanWords)

	s := nextString()

	n := len(s)

	var s2 string
	var s3 string

	s2 = s[0 : (n-1)/2]
	s3 = s[(n+3)/2-1 : n]

	//fmt.Println(rev(s))
	//fmt.Println(rev(s2))
	//fmt.Println(rev(s3))

	if s == rev(s) && s2 == rev(s2) && s3 == rev(s3) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
