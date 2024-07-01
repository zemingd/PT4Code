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
  buf := make([]byte, 0)
  sc.Buffer(buf, 200001)

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
  for i := 0; i < n; i++ {
    if s[i] == '#' {
      rock = append(rock, i)
    }
  }

  if len(rock) == 0 {
    fmt.Println("Yes")
    os.Exit(0)
  }

  for i := 0; i < len(rock) - 1; i++ {
    if rock[i + 1] - rock[i] == 1 {
      fmt.Println("No")
      os.Exit(0)
    }
  }

  if c < d {
    fmt.Println("Yes")
    os.Exit(0)
  } else {
    var min, max int
    max = 1
    for i := 0; i < len(rock); i++ {
      if rock[i] < b {
        min = i
      }
      if rock[i] < d {
        max = i + 2
      }
    }
    if max > len(rock) {
      if d - rock[len(rock) - 1] > 1 {
        fmt.Println("Yes")
        os.Exit(0)
      }
      max--
    } else {
      if d - rock[len(rock) - 2] > 1 && rock[max - 1] - rock[max - 2] > 3 {
        fmt.Println("Yes")
        os.Exit(0)
      }
    }
    rock := rock[min:max]
    if len(rock) == 0 {
      fmt.Println("Yes")
      os.Exit(0)
    }
    for i := 0; i < len(rock) - 1; i++ {
      if rock[i + 1] - rock[i] > 3 {
        if i == 0 && rock[1] - b > 1 {
        } else {
          fmt.Println("Yes")
          os.Exit(0)
        }
      }
    }
    fmt.Println("No")
    os.Exit(0)
  }
}
