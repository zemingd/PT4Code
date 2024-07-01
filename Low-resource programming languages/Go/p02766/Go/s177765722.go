package main

import (
  "fmt"
)

func main() {
  var n,k int
  fmt.Scan(&n)
  fmt.Scan(&k)

  baseNum := k
  tmpNum := n
  conversionNum := "" // 変換後の値格納用　11進以上はアルファベットのため、文字列で扱う必要がある

  for digitNum := 1;; {
      remainder := tmpNum%baseNum
      if remainder >= 10 {
          conversionNum = string('A' + (remainder-10)) + conversionNum
      } else {
          conversionNum = string('0' + remainder) + conversionNum
      }
      tmpNum = tmpNum/baseNum
      if tmpNum == 0 {
          break
      }
      digitNum *= 10
  }
  fmt.Println(len(conversionNum))
}
