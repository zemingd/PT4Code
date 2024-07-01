package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

func countR(s string, n int) (ret int) {
  for i := n; i >= 0; i-- {
    if s[i] != 'R' {
      return
    }
    ret++
  }
  return
}

func countL(s string, n int) (ret int) {
  for i := n; i < len(s); i++ {
    if s[i] != 'L' {
      return
    }
    ret++
  }
  return
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 入力バッファが大きくなるならこれ */
	buf := make([]byte, 1000000)
	sc.Buffer(buf, 1000000)

	sc.Scan()
  s := sc.Text()

  for i := 0; i < len(s); i++ {
    if s[i] == 'R' {
      if s[i + 1] == 'L' {
        fmt.Print((countR(s, i) + 1) / 2 + countL(s, i + 1) / 2)
      } else {
        fmt.Print(0)
      }
    } else {
      if s[i - 1] == 'R' {
        fmt.Print((countL(s, i) + 1) / 2 + countR(s, i - 1) / 2)
      } else {
        fmt.Print(0)
      }
    }
    fmt.Print(" ")
  }
  fmt.Println()

	/* 出力用 */
	_, _ = fmt.Fprintf(stdout, "")
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}
