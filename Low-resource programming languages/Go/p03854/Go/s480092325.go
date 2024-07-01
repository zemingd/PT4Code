package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	stdin = bufio.NewScanner(os.Stdin)
	t     = []string{"dream", "dreamer", "erase", "eraser"}
)

func main() {
	stdin.Scan()
	s := reverseString(stdin.Text())
	for i, st := range t {
		t[i] = reverseString(st)
	}
	var flag bool
	for {
		flag = false
		for _, st := range t {
			if strings.HasPrefix(s, st) {
				s = strings.Replace(s, st, "", 1)
				flag = true
				break
			}
		}
		if s == "" {
			fmt.Println("YES")
			break
		} else if !flag {
			fmt.Println("NO")
			break
		}
	}
}

func reverseString(s string) string {
	bytes := []byte(s)
	for i, j := 0, len(bytes)-1; i < j; i, j = i+1, j-1 {
		tmp := bytes[i]
		bytes[i] = bytes[j]
		bytes[j] = tmp
	}
	return string(bytes)
}

func scanArrayInt() []int {
	var ret = []int{}
	stdin.Scan()
	for _, s := range strings.Split(stdin.Text(), " ") {
		i, _ := strconv.Atoi(s)
		ret = append(ret, i)
	}
	return ret
}