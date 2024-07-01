package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextText() string {
	sc.Scan()
	return sc.Text()
}

func main() {

	sc.Split(bufio.ScanWords)
	s := []byte(nextText())
	q := nextInt()
	ans := s[:]

	for i := 1; i <= q; i++ {

		if nextInt() == 1 {
			reverse(ans)
			continue
		}

		if nextInt() == 1 {
			ans = append([]byte(nextText()), ans...)
		} else {
			ans = append(ans, nextText()...)
		}
	}

	fmt.Print(string(ans))
}

func reverse(s []byte) {

	len := len(s)
	mid := len / 2

	for i := 0; i < mid; i++ {
		s[i], s[len-i-1] = s[len-i-1], s[i]
	}
}
