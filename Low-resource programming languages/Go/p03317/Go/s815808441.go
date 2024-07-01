package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	k := getInt()
	x := k - 1

	i := -1
	for j := 1; j <= n; j++ {
		if tmp := getInt(); tmp == 1 {
			i = j
		}
	}

	count := ((i-1)+x-1)/x + ((n-i)+x-1)/x
	if (i-1)%x+(n-i)%x >= x {
		if (i-1)%x > 0 && (n-i)%x > 0 {
			count -= 2
		} else {
			count--
		}
	}

	fmt.Println(count)
}

//   i-1        n-i
// 0 0 0 0 0 0 1 0 0 0
// 1 2 3 4 5 6 7 8 9 10

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
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
