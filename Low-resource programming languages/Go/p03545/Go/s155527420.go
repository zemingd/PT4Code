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
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				tmp := a
				if i == 0 {
					tmp += b
				} else {
					tmp -= b
				}

				if j == 0 {
					tmp += c
				} else {
					tmp -= c
				}

				if k == 0 {
					tmp += d
				} else {
					tmp -= d
				}
				if tmp == 7 {
					ans = solve(i, j, k, a, b, c, d)
				}
			}
		}
	}
	fmt.Println(ans)
}

func solve(i, j, k int, s ...int) string {
	ans := itoa(s[0])

	ans += string('+'+i*2) + itoa(s[1])
	ans += string('+'+j*2) + itoa(s[2])
	ans += string('+'+k*2) + itoa(s[3])

	ans += "=7"

	return ans
}

func itoa(n int) string {
	return strconv.Itoa(n)
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
