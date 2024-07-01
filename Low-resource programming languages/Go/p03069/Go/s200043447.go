package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 2*10^5)
	sc.Buffer(buf, 2*10^5+1024)
	sc.Split(bufio.ScanWords)
	length, _ := strconv.Atoi(readLine(sc))
	str := readLine(sc)
	slice := strings.Split(str, "")

	start := -1
	var count int
	for i := 0; i < length-1; i++ {
		if slice[i] == "#" {
			start = i
			break
		}
	}
	if start == -1 {
		fmt.Println("0")
	} else {
		for j := start + 1; j < length; j++ {
			if slice[j] == "." {
				count++
			}
		}
		fmt.Println(count)
	}
}
