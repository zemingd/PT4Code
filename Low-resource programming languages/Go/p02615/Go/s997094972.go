package main

import (
  "bufio"
  "fmt"
  "os"
  "sort"
  "strconv"
)

func nextInt() int {
  sc.Scan()
  i, e := strconv.Atoi(sc.Text())
  if e != nil {
    panic(e)
  }
  return i
}

func nextLine() string {
  sc.Scan()
  return sc.Text()
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
  sc.Split(bufio.ScanWords)
  n := nextInt()

  as := make([]int, n)
  for i := 0; i < n; i++ {
    as[i] = nextInt()
  }

  sort.Slice(as, func(i, j int) bool {
    return as[i] > as[j]
  })

  ans := 0
  que := make([]int, 0)

  for k, a := range as {
    if k == 0 {
      que = append(que, a)
    } else {
      ans = que[0] + ans
      que = que[1:len(que)]
      que = append(que, a)
      que = append(que, a)
    }
  }
  fmt.Println(ans)
}