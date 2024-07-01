package main

import (
  "bufio"
  "fmt"
  "os"
)

var reader *bufio.Reader = bufio.NewReader(os.Stdin)
var writer *bufio.Writer = bufio.NewWriter(os.Stdout)

func printf(f string, a ...interface{}) { fmt.Fprintf(writer, f, a...) }
func scanf(f string, a ...interface{})  { fmt.Fscanf(reader, f, a...) }

func main() {
  defer writer.Flush()

  var s string
  scanf("%s\n", &s)
  m := map[string]int{
    "SUN": 7,
    "MON": 6,
    "TUE": 5,
    "WED": 4,
    "THU": 3,
    "FRI": 2,
    "SAT": 1,
  }

  printf("%d\n", m[s])
}
