package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

// 任意の要素数の文字列を読み込んでスライスで返す
func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}

// 任意の要素数の配列を読み込んでスライスで返す
func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func main() {
	nm := scanNums(2)
	var a []int
	kv := make(map[int]int, nm[0])
	// n
	for i := 0; i < nm[0]; i++ {
		tmp := scanNums(2)
		// ab = append(ab, tmp)
		a = append(a, tmp[0])
		_, ok := kv[tmp[0]]
		if ok {
			kv[tmp[0]] = kv[tmp[0]] + tmp[1]
		} else {
			kv[tmp[0]] = tmp[1]
		}
	}

	sort.Ints(a)

	var res int64
	curr := 0
	// ii 何回目か v 価格
	for _, aa := range a {
		b := kv[aa]
		if nm[1]-curr >= b {
			res = res + int64(aa*b)
			curr = curr + b
		} else if nm[1]-curr < b {
			num := nm[1] - curr
			res = res + int64(aa*num)
			curr = curr + num
		}
	}
	fmt.Println(res)
}
