package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	fmt.Println(dfs(0, nextInt()))
}

func dfs(x, n int) int {
	if x > n {
		return 0
	}
	ret := 0
	if is753(x) {
		ret = 1
	}
	for i := 3; i <= 7; i += 2 {
		ret += dfs(x*10+i, n)
	}
	return ret
}

func is753(x int) bool {
	m := map[int]int{7: 0, 5: 0, 3: 0}
	for x > 0 {
		switch x % 10 {
		case 7:
			m[7]++
		case 5:
			m[5]++
		case 3:
			m[3]++
		}
		x /= 10
	}
	for _, v := range m {
		if v == 0 {
			return false
		}
	}
	return true
}

func lcm(a, b int64) int64 {
	return (a / gcd(a, b)) * b
}

func gcd(a, b int64) int64 {
	for b != 0 {
		a, b = b, a%b
	}
	return a
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

func max(i, j int) int {
	if i < j {
		return j
	}
	return i
}
