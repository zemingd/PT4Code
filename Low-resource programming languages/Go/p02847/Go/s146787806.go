package main

import (
  "io"
  "bufio"
  "strings"
  "fmt"
  "os"
)
 
func nextDate(date string) (d int) {
  switch date {
    case "SUN":
      d = 7
    case "MON":
      d = 6
    case "TUE":
      d = 5
    case "WED":
      d = 4
    case "THU":
      d = 3
    case "FRI":
      d = 2
    case "SAT":
      d = 1
    default:
      d = 0
  }
  return
}
 
func main() {
  buf := bufio.NewReaderSize(os.Stdin, 1024)
  date := readLine(buf)
  fmt.Fprintf(os.Stdout, "%v\n", nextDate(date))
}
 
func readLine(reader *bufio.Reader) string {
  str, _, err := reader.ReadLine()
  if err == io.EOF {
    return ""
  }
  return strings.TrimRight(string(str), "\r\n")
}
 
func checkErr(err error) {
  panic(err)
}

