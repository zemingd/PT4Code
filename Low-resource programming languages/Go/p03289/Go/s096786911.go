package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	s := nextString()

	ok := true

	count := 0

	for i, c := range s {
		if i == 0 {
			if c != 'A' {
				ok = false
				break
			}
		} else if i >= 2 && i <= len(s)-2 {
			if c == 'C' {
				count++
			} else if 'a' <= c && c <= 'z' {
			} else {
				ok = false
				break
			}
		} else {
			if 'a' <= c && c <= 'z' {
			} else {
				ok = false
				break
			}
		}
	}
	if ok && count == 1 {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
