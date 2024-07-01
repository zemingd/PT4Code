package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func NextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func NextInt() int {
	i, _ := strconv.Atoi(NextStr())
	return i
}

func main() {
	scanner.Split(bufio.ScanWords)
	d, t, s := NextInt(), NextInt(), NextInt()
	if d/t < s || d/t == s && d%t == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
