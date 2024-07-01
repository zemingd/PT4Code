package main

import (
	"bufio"
	"os"
	"strconv"
  	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func gets() string {
	sc.Scan()
	return sc.Text()
}

func toInt(value string) int {
	num, _ := strconv.Atoi(value)
	return num
}

func main() {
  N := toInt(gets())
  var c int
  for c = 1; c <= N; c *= 2 {}
  fmt.Println(c / 2)
}
