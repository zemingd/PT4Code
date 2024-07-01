package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
  "sort"
)

type Menu struct {
  time int
}

type Menus []Menu

func (p Menus) Len() int {
  return len(p)
}

func (p Menus) Swap(i, j int) {
  p[i], p[j] = p[j], p[i]
}

func (p Menus) Less(i, j int) bool {
  return (p[i].time - 1) % 10 < (p[j].time - 1) % 10
}

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  var time Menus = []Menu{{0}, {0}, {0}, {0}, {0}}

  for i := 0; i < 5; i++ {
    sc.Scan()
    time[i].time, _ = strconv.Atoi(sc.Text())
  }

  sum := 0

  sort.Sort(time)

  for i := 1; i < 5; i++ {
    sum += (time[i].time + 9) / 10 * 10
    fmt.Println((time[i].time + 9) / 10 * 10)
  }

  fmt.Println(sum + time[0].time)
}
