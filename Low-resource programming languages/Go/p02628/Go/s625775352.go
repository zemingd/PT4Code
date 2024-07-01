package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var rd = bufio.NewReader(os.Stdin)

// 標準入力から1行読み込む。
func readLine() string {
	buf := make([]byte, 0, 0)
	for {
		l, p, e := rd.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

// 渡された文字列(空白区切りの整数の並び)をintのスライスにする。
func intsFromLine(line string) []int {
	slice := make([]int, 0, 1000)
	for _, str := range strings.Split(line, " ") {
		num, err := strconv.Atoi(str)
		if err != nil {
			panic(err)
		}
		slice = append(slice, num)
	}
	return slice
}

func main() {
	total := 0

	line := readLine()
	nums := intsFromLine(line)

	_, k := nums[0], nums[1]

	line = readLine()
	nums = intsFromLine(line)
	sort.Ints(nums)

	for i := 0; i < k; i++ {
		total += nums[i]
	}

	fmt.Println(total)
}