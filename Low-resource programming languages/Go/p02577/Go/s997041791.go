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
	n := NextInt()

	var res int
	var ans string

	for n > 0 {
		res += n % 10
		n /= 10
	}
	if res%9 == 0 {
		ans = "Yes"
	} else {
		ans = "No"
	}
	fmt.Println(ans)
}
