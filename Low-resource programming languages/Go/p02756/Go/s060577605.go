// bit.ly/39L0tP7
// bufio.scanはデータ数が多くても安定、小規模ならfmt.Scan

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var s string
	var q int
	var flag bool = true
	sc := bufio.NewScanner(os.Stdin)

	sc.Scan()
	s = sc.Text()
	sc.Scan()
	q, _ = strconv.Atoi(sc.Text())
	for i := 0; i < q; i++ {
		sc.Scan()
		slice := strings.Split(sc.Text(), " ")
		if slice[0] == "1" {
			flag = !flag
		} else {
			if slice[1] == "1" {
				if flag {
					s = slice[2] + s
				} else {
					s = s + slice[2]
				}
			} else {
				if flag {
					s = s + slice[2]
				} else {
					s = slice[2] + s
				}
			}
		}
	}
	if flag {
		fmt.Println(s)
	} else {
		fmt.Println(reverse(s))
	}
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}
