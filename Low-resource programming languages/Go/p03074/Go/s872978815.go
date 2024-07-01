package main

import (
  "fmt"
  "bufio"
  "strings"
  "strconv"
  "os"
  "unsafe"
)

func main() {
  rd := bufio.NewReaderSize(os.Stdin, 100000)
  num_string := make([]byte, 0, 100000)

  for {
    l, p, _ := rd.ReadLine()
    num_string = append(num_string, l...)
    if !p {
      break
    }
  }

  nums := strings.Split(*(*string)(unsafe.Pointer(&num_string)), " ")
  n, _ := strconv.Atoi(nums[0])
  k, _ := strconv.Atoi(nums[1])

  s := make([]byte, 0, 100000)

  for {
    l, p, _ := rd.ReadLine()
    s = append(s, l...)
    if !p {
      break
    }
  }

  var count [100002]int

  var prev_value byte = '1'
  arr_num := 0
  for i := 0; i < n; i++ {
    if s[i] != prev_value {
      count[arr_num] = i
      arr_num++
      prev_value = s[i]
    }
  }

  count[arr_num] = n
  arr_num++
  if prev_value == '0' {
    count[arr_num] = n
    arr_num++
  }

  num := 2 * k + 1
  max := 0

  for i := 0;; i += 2 {
    if i + num >= arr_num {
      sum := count[arr_num - 1] - count[i]
      if sum > max {
        fmt.Println(sum)
      } else {
        fmt.Println(max)
      }
      break
    }
    sum := count[i + num - 1] - count[i]
    if sum > max {
      max = sum
    }
  }
}
