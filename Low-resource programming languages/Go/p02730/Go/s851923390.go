package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextStr()
	palindrome := strings.Split(s, "")
	//index=0の要素は使わない
	palindrome = append(palindrome[:1], palindrome[0:]...)
	palindrome[0] = " "
	length := len(palindrome) - 1
	ans := "Yes"

	for i := 1; i <= length/2; i++ {
		//fmt.Println("条件1 前：", i, "後：", length-i+1)
		if palindrome[i] != palindrome[length-i+1] {
			ans = "No"
		}
	}
	for i := 1; i <= (length-1)/2; i++ {
		//fmt.Println("条件2 前：", i, "後：", (length+1)/2-i)
		if palindrome[i] != palindrome[(length+1)/2-i] {
			ans = "No"
		}
	}
	for i := (length + 3) / 2; i <= length; i++ {
		//fmt.Println("条件3 前：", i, "後：", (3*length+3)/2-i)
		if palindrome[i] != palindrome[(3*length+3)/2-i] {
			ans = "No"
		}
	}
	fmt.Println(ans)
}