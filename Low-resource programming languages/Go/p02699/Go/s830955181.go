package main

import (
  "bufio"
  . "fmt"
  "os"
)

func main() {
  in := bufio.NewReader(os.Stdin)
  out := bufio.NewWriter(os.Stdout)
  defer out.Flush()

  var S, W int
  Fscan(in, &S)
  Fscan(in, &W)
  if S > W {
    Fprintln(out, "safe")
    return
  }
  Fprintln(out, "unsafe")
  return
}