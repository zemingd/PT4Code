package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func allAtoi(num []string) []int {
	conv := make([]int, len(num))
	for i, item := range num {
		conv[i], _ = strconv.Atoi(item)
	}
	return conv
}

func main() {
	in := strings.Split(nextLine(), "")
  ans := make([]byte, 0, len(in)/2+1)
  for i := 0; i < len(in); i+=2 {
    ans = append(ans, in[i]...)
  }
  fmt.Println(string(ans))
}
