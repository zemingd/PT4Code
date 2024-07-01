package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  h, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  w, _ := strconv.Atoi(sc.Text())

  sq := make([][]bool, h + 1)
  var mem [2001][2001][2]int

  for i := 0; i < h; i++ {
    sq[i] = make([]bool, w + 1)
    sq[i][w] = true
    sc.Scan()
    s := sc.Text()
    for j := 0; j < w; j++ {
      if s[j] == '#' {
        sq[i][j] = true
      }
    }
  }

  sq[h] = make([]bool, w + 1)
  for i := 0; i < w; i++ {
    sq[h][i] = true
  }


  for i := 0; i < h; i++ {
    base := 0
    for base < w {
      j := base
      for !sq[i][j] {
        j++
      }
      for k := base; k < j; k++ {
        mem[i][k][0] = j - base
      }
      base = j + 1
    }
  }

  for i := 0; i < w; i++ {
    base := 0
    for base < h {
      j := base
      for !sq[j][i] {
        j++
      }
      for k := base; k < j; k++ {
        mem[k][i][1] = j - base
      }
      base = j + 1
    }
  }

  max := 0
  for i := 0; i < h; i++ {
    for j := 0; j < w; j++ {
      if mem[i][j][0] + mem[i][j][1] > max {
        max = mem[i][j][0] + mem[i][j][1]
      }
    }
  }

  fmt.Println(max - 1)

}
