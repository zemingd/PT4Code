package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	s := sc.Text()
	n := len(s)
	if string(s[0]) == "A" {
	} else {
		fmt.Println("WA")
		return
	}

	if strings.Count(string(s[2:n-1]), "C") == 1 {
	} else {
		fmt.Println("WA")
		return
	}

	for i := 0; i < n; i++ {
		if string(s[i]) == "A" || string(s[i]) == "C" {
			continue
		}
		if s[i] < 97 {
			fmt.Println("WA")
			return
		}
	}

	fmt.Println("AC")
}
