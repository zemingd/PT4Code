package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sp, t := []rune(getString()), []rune(getString())
	sAns := "UNRESTORABLE"

	idx := -1
	for i := 0; i < (len(sp) - len(t) + 1); i++ {
		ss := sp[i : i+len(t)]
		flag := true

		for j, s := range ss {
			if (s != '?') && (s != t[j]) {
				flag = false
				break
			}
		}

		if flag {
			idx = i
			break
		}
	}

	if idx != -1 {
		sAns = ""
		for i := 0; i < len(sp); i++ {
			switch {
			case i == idx:
				sAns += string(t)
				i += len(t) - 1
			case sp[i] == '?':
				sAns += "a"
			default:
				sAns += string(sp[i])
			}
		}
	}

	fmt.Println(sAns)
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
