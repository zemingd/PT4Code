package main

import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
  "math/big"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
  input := nextLine()
  N, _ := strconv.Atoi(strings.Fields(input)[0])
  bigNum1 := big.NewInt(int64(N))
  bigNum2 := big.NewInt(int64(N-1))
  bigNum3 := big.NewInt(2)
  bigNum1.Mul(bigNum1, bigNum2)
  bigNum1.Div(bigNum1, bigNum3)
  fmt.Println(bigNum1)
}

func nextLine() string {
  sc.Scan()
  return sc.Text()
}