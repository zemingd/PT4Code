package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var count int
	fmt.Scanf("%d", &count)

	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	list := strToInt(strings.Split(s.Text(), " "))

	if len(list) < count {
		fmt.Printf("-1\n")
		return
	}

	fmt.Printf("%d\n", sortBreak(list[:count]))
}

func strToInt(p []string) (ret []int) {
	for _, v := range p {
		t, _ := strconv.Atoi(v)
		ret = append(ret, t)
	}
	return ret
}

func sortBreak(list []int) int{
	check := 1
	var  length, ret int
	length = len(list)

	for i := 0; i < length; i++ {
		tIndex := index(list, check)
		if tIndex == -1 {
			check = check - 1
			break
		}

		for j := i; j < tIndex; j++ {
			list = unset(list, i)
			ret++
		}

		check++
	}

	// 残りの配列を削除
	length = len(list)
	tIndex := index(list, check)
	if tIndex != -1 {
		for i := tIndex + 1; i < length; i++ {
			list = unset(list, tIndex + 1)
			ret++
		}
	}

	if checkList(list) {
		return ret
	}
	return -1
}

func checkList(list []int) bool {
	c := 1
	for _, v := range list {
		if v != c {
			return false
		}
		c++
	}
	return true
}

func unset(s []int, i int) []int {
	if i >= len(s) {
		return s
	}
	return append(s[:i], s[i+1:]...)
}

func index( list []int, match int) int {
	for k, v := range list {
		if v == match {
			return k
		}
	}
	return -1
}

