package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

const MOD = 1000000007

func xorSum4(n int, a []int) int {

	var sum int
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			sum += a[i] ^ a[j]
		}
	}
	return sum % MOD
}

func main() {
	reader := bufio.NewReaderSize(os.Stdin, 1024*1024)

	n, err := strconv.Atoi(readLine(reader))
	checkError(err)
	a := make([]int, n)
	ss := strings.Split(readLine(reader), " ")
	for i := range ss {
		a[i], err = strconv.Atoi(ss[i])
		checkError(err)
	}
	fmt.Println(xorSum4(n, a))
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
