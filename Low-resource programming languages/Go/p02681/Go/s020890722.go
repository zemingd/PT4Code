package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	S := getStdin() // 文字列入力
	T := getStdin() // 文字列入力

	if S == T[:len(S)] {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}
}

var sc = bufio.NewScanner(os.Stdin)

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	sc.Scan()
	rtn, _ := strconv.Atoi(sc.Text())
	return rtn
}
func getStdinInt64() int64 {
	sc.Scan()
	rtn, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return rtn
}
func getStdinIntArr() []int {
	sc.Scan()
	str := sc.Text()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
func getStdinIntArr64() []int64 {
	sc.Scan()
	str := sc.Text()
	list := strings.Split(str, " ")
	rtn := make([]int64, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.ParseInt(val, 10, 64)
	}
	return rtn
}
