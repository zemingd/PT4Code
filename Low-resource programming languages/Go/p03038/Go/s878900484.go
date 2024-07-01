package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
  "sort"
)

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  n, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  m, _ := strconv.Atoi(sc.Text())

  cnt := make(map[int]int)
  l := make([]int, 0, 100000000)

  for i := 0; i < n; i++ {
    sc.Scan()
    a, _ := strconv.Atoi(sc.Text())
    if _, ok := cnt[a]; !ok {
      l = append(l, a)
    }

    cnt[a] += 1
  }

  for i := 0; i < m; i++ {
    sc.Scan()
    b, _ := strconv.Atoi(sc.Text())

    sc.Scan()
    c, _ := strconv.Atoi(sc.Text())

    if _, ok := cnt[c]; !ok {
      l = append(l, c)
    }

    cnt[c] += b
  }

  sort.Sort(sort.Reverse(sort.IntSlice(l)))

  sum := 0
  for _, v := range l {
    if n - cnt[v] < 0 {
      sum += v * n
      break
    } else {
      sum += v * cnt[v]
      n -= cnt[v]
    }
  }
  fmt.Println(sum)
}

