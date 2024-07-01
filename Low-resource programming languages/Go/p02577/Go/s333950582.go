package main

import (
	f "fmt"
	"strconv"
	"strings"
)

func main() {
	var n string
	f.Scan(&n)

	arr := strings.Split(n, "")
	ans := num(arr)
	if ans%9 == 0 {
		f.Println("Yes")
	} else {
		f.Println("No")
	}
}

func num(arr []string) int {

	var num int
	for i, _ := range arr {
		n, _ := strconv.Atoi(arr[i])
		num += n
	}
	return num

}
