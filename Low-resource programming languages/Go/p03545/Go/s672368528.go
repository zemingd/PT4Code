package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	x := getString()

	ans := ""
	for i := -1; i < 2; i += 2 {
		for j := -1; j < 2; j += 2 {
			for k := -1; k < 2; k += 2 {
				tmp := btoi(x[0])
				tmp += i * btoi(x[1])
				tmp += j * btoi(x[2])
				tmp += k * btoi(x[3])

				if tmp == 7 {
					ans = solve(i, j, k, x)
				}
				fmt.Println(i, j, k, tmp, ans)
			}
		}
	}
	fmt.Println(ans)
}

func solve(i, j, k int, x string) string {
	ans := string(x[0])

	ans += string('+'+1-i) + string(x[1])
	ans += string('+'+1-j) + string(x[2])
	ans += string('+'+1-k) + string(x[3])

	ans += "=7"

	return ans
}

func btoi(b byte) int {
	i, _ := strconv.Atoi(string(b))
	return i
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
