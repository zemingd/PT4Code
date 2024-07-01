package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner.Split(bufio.ScanBytes)
	a := getInt()
	b := getInt()
	c := getInt()
	d := getInt()

	ans := ""
	for i := 0; i < 2; i++ {
		tmp := a
		if i == 0 {
			tmp += b
		} else {
			tmp -= b
		}
		for j := 0; j < 2; j++ {
			if j == 0 {
				tmp += c
			} else {
				tmp -= c
			}
			for k := 0; k < 2; k++ {
				if k == 0 {
					tmp += d
				} else {
					tmp -= d
				}
				if tmp == 7 {
					ans = strconv.Itoa(a) + string('+'+i*2) + strconv.Itoa(b) + string('+'+j*2) + strconv.Itoa(c) + string('+'+k*2) + strconv.Itoa(d) + "=7"
				}
			}
		}
	}
	fmt.Println(ans)
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
