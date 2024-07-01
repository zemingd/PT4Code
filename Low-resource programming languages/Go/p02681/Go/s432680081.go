package main

import (
  "os"
  "fmt"
  "io/ioutil"
  "strings"
)

var (
  S string
  T string
)

func scan() {
  all, err := ioutil.ReadAll(os.Stdin)
  if err != nil {
    panic(err)
  }
  
  st := strings.Split(string(all), "\n")
  S = st[0]
  T = st[1]
}

func test() {
  Td := T[:len(T)-1]
  if S == Td {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}

func main() {
  scan()
  test()
}