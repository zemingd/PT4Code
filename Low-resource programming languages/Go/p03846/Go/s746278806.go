package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	as := getIntSlice(n)

	m := make(map[int]int)
	for _, a := range as {
		if n%2 == a%2 {
			fmt.Println(0)
			return
		}
		m[a]++
	}

	ans := 1
	for k, v := range m {
		if (k == 0 && v != 1) || (k != 0 && v != 2) {
			ans = 0
			break
		}

		ans = (ans * v) % 1000000007
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

func getIntSlice(n int) []int {
	ans := make([]int, n)
	for i := range ans {
		ans[i] = getInt()
	}
	return ans
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
