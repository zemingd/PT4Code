package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	S := getStdin()
	T := getStdin()

	flag := true
	for i := 0; i < len(S); i++ {
		if S[i] != T[i] {
			flag = false
			break
		}
	}

	if flag {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}
}

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
}
func getStdinIntArr() []int {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
