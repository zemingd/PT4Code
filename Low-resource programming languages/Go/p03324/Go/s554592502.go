// https://atcoder.jp/contests/abc100/tasks/abc100_b

package main

import (
  "bufio"
  "bytes"
  "fmt"
  "math"
  "os"
  "strconv"
  "strings"
)

func main() {
  io := NewIo()
  D := io.NextInt()
  N := io.NextInt()

  result := N * int(math.Pow(100,float64(D)))
  if N == 100 {
    result = (N-1) * int(math.Pow(100,float64(D)))
  }
  fmt.Println(result)
}

type Io struct {
  reader *bufio.Reader
  writer *bufio.Writer
  tokens []string
  nextToken int
}

func NewIo() *Io {
  return &Io{
    reader: bufio.NewReader(os.Stdin),
    writer: bufio.NewWriter(os.Stdout),
  }
}

func (io *Io) Next() string {
  if io.nextToken >= len(io.tokens) {
    line := io.NextLine()
    io.tokens = strings.Fields(line)
    io.nextToken = 0
  }

  res := io.tokens[io.nextToken]
  io.nextToken++
  return res
}

func (io *Io) NextInt() int {
  res, err := strconv.Atoi(io.Next())
  if err != nil {
    panic(err)
  }
  return res
}

func (io *Io) Println(a ...interface{}) {
  var values []string
  for i := 0; i < len(a); i++ {
    values = append(values, "%v")
  }
  io.Printfln(strings.Join(values, " "), a...)
}

func (io *Io) Printfln(format string, a ...interface{}) {
  fmt.Fprintf(io.writer, format+"\n", a...)
}

func (io *Io) NextLine() string {
  if io.nextToken < len(io.tokens) {
    panic("io.nextToken < len(io.tokens)")
  }

  var buffer bytes.Buffer

  for {
    line, isPrefix, err := io.reader.ReadLine()
    if err != nil {
      panic(err)
    }
    buffer.Write(line)
    if !isPrefix {
      break
    }
  }

  return buffer.String()
}
