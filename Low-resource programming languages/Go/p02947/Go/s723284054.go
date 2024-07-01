package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	s := scanStrings(n)

	word := make([][]int, n)
	for i := 0; i < n; i++ {
		word[i] = make([]int, 26)
	}
	for i := 0; i < n; i++ {
		for j := 0; j < 26; j++ {
			word[i][j] = 0
		}
	}

	for i := 0; i < n; i++ {
		for j := 0; j < 10; j++ {
			word[i][s[i][j]-97]++
		}
	}

	count := int64(0)

	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			if reflect.DeepEqual(word[i], word[j]) {
				count++
			}
		}
	}
	fmt.Println(count)
}
