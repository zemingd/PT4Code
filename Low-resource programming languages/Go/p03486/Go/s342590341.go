package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)

	S, T := next(), next()

	if len(S) < len(T) && S == T {
		fmt.Println("Yes")
		return
	}

	s := strings.Split(S, "")
	t := strings.Split(T, "")

	sort.Strings(s)
	sort.Strings(t)
	if len(s) < len(t) && strings.HasPrefix(strings.Join(t, ""), strings.Join(s, "")) {
		fmt.Println("Yes")
		return
	}

	sort.Sort(sort.Reverse(sort.StringSlice(t)))
	for i := 0; i < min(len(s), len(t)); i++ {
		if s[i] == t[i] {
			continue
		}
		if s[i] < t[i] {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i

}

func min(n, m int) int {
	if n <= m {
		return n
	}
	return m
}
