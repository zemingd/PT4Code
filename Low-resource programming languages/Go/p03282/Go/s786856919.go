package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	s := sc.Text()
	sc.Scan()
	k, _ := strconv.Atoi(sc.Text())

	var fc rune
	fi := len(s)
	for i, c := range s {
		if c != '1' {
			fc = c
			fi = i
			break
		}
	}

	if fi+1 <= k {
		fmt.Println(string(fc))
	} else {
		fmt.Println(1)
	}
}
