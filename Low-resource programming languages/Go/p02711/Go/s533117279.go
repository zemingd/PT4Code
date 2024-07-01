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

/*
func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	str := strconv.Itoa(n)
	arr := strings.Split(str, "")
	for i := 0; i < len(arr); i++ {
		if arr[i] == "7" {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
*/

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	str := strconv.Itoa(n)
	if strings.Index(str, "7") != -1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
