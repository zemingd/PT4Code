package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	k := getInt()
	s := getInt()

	ans := 0
	for i := 0; i <= k; i++ {
		for j := 0; j <= k; j++ {
			tmp := s - i - j
			if tmp >= 0 && tmp <= k {
				ans++
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
