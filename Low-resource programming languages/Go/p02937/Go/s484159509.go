package main

import (
  "fmt"
  "bufio"
  "os"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
    buf := make([]byte, 0, 1000000)
    for {
        l, p, e := rdr.ReadLine()
        if e != nil {
            panic(e)
        }
        buf = append(buf, l...)
        if !p {
            break
        }
    }
    return string(buf)
}

func main() {
  var s, t string
  s = readLine()
  t = readLine()
  fmt.Println(0)
}