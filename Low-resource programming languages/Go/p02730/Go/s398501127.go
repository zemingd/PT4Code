package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readFloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func main() {
	sc.Split(bufio.ScanWords)
	s := readString()

	n := len(s)
	ok := true

	s1 := s[0 : (n-1)/2]
	n1 := len(s1)
	for i := 0; i < n1; i++ {
		if i == n1-i-1 {
			break
		}
		if s1[i] != s1[n1-i-1] {
			ok = false
			break
		}
	}

	s2 := s[((n+3)/2)-1 : n]
	n2 := len(s2)
	for i := 0; i < n2; i++ {
		if i == n2-i-1 {
			break
		}
		if s2[i] != s2[n2-i-1] {
			ok = false
			break
		}
	}
	if ok {
		fmt.Println("Yes")

	} else {
		fmt.Println("No")
	}
}
