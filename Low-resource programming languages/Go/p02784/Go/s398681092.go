package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
	"strings"
)

func solution(h, n int, a []int) string {
	var sum int
	sort.Ints(a)
	for i := n - 1; i >= 0; i-- {
		sum += a[i]
		if sum >= h {
			return "Yes"
		}
	}
	return "No"
}

func main() {
	reader := bufio.NewReaderSize(os.Stdin, 10240*10240)

	var h, n int
	var err error
	fmt.Scan(&h, &n)
	a := make([]int, n)
	ss := strings.Split(readLine(reader), " ")
	for i := range ss {
		a[i], err = strconv.Atoi(ss[i])
		checkError(err)
	}
	fmt.Println(solution(h, n, a))
}

func readLine(reader *bufio.Reader) string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}

	return strings.TrimRight(string(str), "\r\n")
}

func checkError(err error) {
	if err != nil {
		panic(err)
	}
}
