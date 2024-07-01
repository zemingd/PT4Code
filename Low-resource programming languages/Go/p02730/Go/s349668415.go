package main

import (
	"bufio"
	"fmt"
	"os"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000000)

func readLine() []byte {
	buf := make([]byte, 0, 10000000)
	for {
		l, p, err := rdr.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return buf
}

func main() {
	s := readLine()

	n1 := -1 + (len(s)-1)/2
	n2 := -1 + (len(s)+3)/2

	ans1 := func() bool {
		for i := 0; i < n1/2; i++ {
			if s[i] != s[n1-i] {
				return false
			}
		}
		return true
	}()

	ans2 := func() bool {
		for i := 0; i < (len(s)-n2)/2; i++ {
			if s[n2+i] != s[len(s)-i-1] {
				return false
			}
		}
		return true
	}()

	if ans1 && ans2 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
