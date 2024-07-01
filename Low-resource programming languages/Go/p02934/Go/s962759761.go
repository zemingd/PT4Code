package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return (a*b)/gcd(a,b)
}
func calc(arr []string, times int) {
	tmpLcm, _ := strconv.Atoi(arr[0])
	for i := 1; i < len(arr); i++ {
		b, _ := strconv.Atoi(arr[i])
		tmpLcm = lcm(tmpLcm, b)
	}
	count := 0
	for i := 0; i < len(arr); i++ {
		tmp, _ := strconv.Atoi(arr[i])
		count += tmpLcm/tmp
	}
	fmt.Println(float64(tmpLcm)/float64(count))
}

func main() {

	reader := bufio.NewReaderSize(os.Stdin, 1024*1024)
	times, _:= strconv.Atoi(readLine(reader))
	arr := strings.Split(readLine(reader), " ")
	calc(arr, times)
}

func readLine(reader *bufio.Reader) string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}
	return strings.TrimRight(string(str), "\r\n")
}