package main

import (
  "bufio"
  "fmt"
  "os"
)

var sc = bufio.NewScanner(os.Stdin)

func readLine() string {
  sc.Scan()
  return sc.Text()

}

func main() {
  str := readLine()
  if str == "Sunny" {
    fmt.Println("Cloudy")
  } else if str == "Rainy" {
    fmt.Println("Sunny")
  } else {
    fmt.Println("Rainy")
  }
}
