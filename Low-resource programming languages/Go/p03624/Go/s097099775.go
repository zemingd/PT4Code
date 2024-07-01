package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	s := []byte(nextLine())
	exists := make([]int, 'z'-'a'+1)
	for _, v := range s {
		exists[v-'a']++
	}
	for i, v := range exists {
		if v == 0 {
			fmt.Printf("%c\n", i+'a')
			return
		}
	}
	fmt.Println("None")

}

const size = 1000000

var reader = bufio.NewReaderSize(os.Stdin, size)

func nextLine() string {
	var line, buffer []byte
	isPrefix := true
	var err error
	for isPrefix {
		line, isPrefix, err = reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
	}
	return string(buffer)
}
func nextStringArray() []string {
	return strings.Split(nextLine(), " ")
}
func nextInt() int {
	n, _ := strconv.Atoi(nextLine())
	return n
}
func nextIntArray() []int {
	s := strings.Split(nextLine(), " ")
	n := len(s)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], _ = strconv.Atoi(s[i])
	}
	return a
}

func min(i, j int) int {
	if i > j {
		return j
	}
	return i
}
