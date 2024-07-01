package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)


func next() int64 {
  sc.Scan()
  i, _ := strconv.ParseInt(sc.Text(), 10, 64)
  return i
}

func sort(array []int64) []int64 {
  if len(array) < 2 {
    return array
  }

  pivot := array[0]
  left := []int64{}
  right := []int64{}
  for _, v := range array[1:] {
    if v > pivot {
      right = append(right, v)
    } else {
      left = append(left, v)
    }
  }

  left = sort(left)
  right = sort(right)

  sorted := append(left, pivot)
  sorted = append(sorted, right...)

  return sorted
}


func main() {
  sc.Split(bufio.ScanWords)
  n := int(next())
  arr := make([]int64, n, n+10000)
  isYes := true
  
  for i := 0; i < n; i++ {
    arr[i] = next()
  }
  
  arr = sort(arr)
  for i := 0; i < n-1; i++ {
    if arr[i] == arr[i+1] {
      isYes = false
    }
  }
  
  if isYes {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}