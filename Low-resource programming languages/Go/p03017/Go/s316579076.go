package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)

func main () {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  n, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  a, _ := strconv.Atoi(sc.Text())
  a--

  sc.Scan()
  b, _ := strconv.Atoi(sc.Text())
  b--

  sc.Scan()
  c, _ := strconv.Atoi(sc.Text())
  c--

  sc.Scan()
  d, _ := strconv.Atoi(sc.Text())
  d--

  sc.Scan()
  s := sc.Text()

  rock := make([]int, 0, n)

  if c < d {
    for i := a; i < d; i++ {
      if s[i] == '#' {
        rock = append(rock, i)
      }
    }

    for i := 0; i < len(rock) - 1; i++ {
      if rock[i + 1] - rock[i] == 1 {
        fmt.Println("No")
        os.Exit(0)
      }
    }
    fmt.Println("Yes")
    os.Exit(0)
  } else {
    for i := 0; i < c; i++ {
      if s[i] == '#' {
        rock = append(rock, i)
      }
    }

    var r bool
    for i := 0; i < len(rock) - 1; i++ {
      if rock[i + 1] - rock[i] == 1 {
        fmt.Println("No")
        os.Exit(1)
      }
      if rock[i + 1] - rock[i] >= 3 && rock[i] > b {
        r = true
      }
    }
    if !r {
      if d - rock[len(rock) - 1] == 1 {
        fmt.Println("No")
        os.Exit(0)
      }
      if n - 1 - rock[len(rock) - 1] >= 3 {
        r = true
      }
    }
    if r {
      fmt.Println("Yes")
      os.Exit(0)
    } else {
      fmt.Println("No")
      os.Exit(0)
    }
  }

  fmt.Println(rock)
}
