package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	s := next()

	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}

	cPos := -1
	for i := 2; i < len(s)-1; i++ {
		if s[i] == 'C' {
			if cPos != -1 {
				fmt.Println("WA")
				return
			}
			cPos = i
		}
	}
	if cPos == -1 {
		fmt.Println("WA")
		return
	}

	b := []byte(s)
	b = append(b[1:cPos], b[cPos+1:]...)
	l := bytes.ToLower(b)

	for i := 0; i < len(b); i++ {
		if b[i] != l[i] {
			fmt.Println("WA")
			return
		}
	}

	fmt.Println("AC")
}