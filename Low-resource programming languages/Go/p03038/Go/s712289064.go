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
  n, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  m, _ := strconv.Atoi(sc.Text())

  var cnt [1000000001]int

  for i := 0; i < n; i++ {
    sc.Scan()
    a, _ := strconv.Atoi(sc.Text())
    cnt[a] += 1
  }

  for i := 0; i < m; i++ {
    sc.Scan()
    b, _ := strconv.Atoi(sc.Text())

    sc.Scan()
    c, _ := strconv.Atoi(sc.Text())

    cnt[c] += b
  }

  count := 0
  var sum int64
  for i := 100000000; i >= 0; i-- {
    if count + cnt[i] <= n {
      sum += int64(cnt[i]) * int64(i)
      count += cnt[i]
    } else {
      sum += int64(i) * int64((n - count))
      break
    }
  }

  fmt.Println(sum)
}

