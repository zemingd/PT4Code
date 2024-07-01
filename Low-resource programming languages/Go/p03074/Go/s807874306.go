package main

import (
  "fmt"
  "bufio"
  "strconv"
  "os"
)

func main() {
  sc :=  bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  n, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  k, _ := strconv.Atoi(sc.Text())

  rd := bufio.NewReaderSize(os.Stdin, 100000)
  s := make([]byte, 0, 100000)

  for {
    l, p, _ := rd.ReadLine()
    s = append(s, l...)
    if !p {
      break
    }
  }

  var count [100002]int

  cnt := 0
  var prev_value byte = '1'
  arr_num := 0
  for i := 0; i < n; i++ {
    if s[i] == prev_value {
      cnt++;
    } else {
      count[arr_num] = cnt
      arr_num++
      prev_value = s[i]
      cnt = 1
    }
  }

  count[arr_num] = cnt
  arr_num++
  if prev_value == '0' {
    arr_num++
  }

  num := 2 * k + 1
  max := 0
  for i := 0;; i += 2 {
    sum := 0
    for j := i; j < num + i && j < arr_num; j++ {
      sum += count[j]
    }
    if sum > max {
      max = sum
    }
    if num + i >= arr_num - 1 {
      break
    }
  }

  fmt.Println(max)

}
