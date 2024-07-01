package main

import (
  "fmt"
)

func main() {
  var a,b,c,k int
  fmt.Scanf("%d %d %d %d", &a, &b ,&c, &k)

  // K枚のカードを選択し、取りうる最大値を算出する
  if a >= k {
    // aとkを比較し、aがkよりも多い場合は全てAのカードで最大値を算出
    fmt.Println(k)
  } else if b >= k-a {
    // aよりもkの方が大きい場合はbとk-aを比較し、bがk-aよりも多い場合は全てA・Bのカードで
    // 最大値を算出
    fmt.Println(a)
  } else {
    // bよりもk-aの方が大きい場合はk-a-bの値分、Cのカードを使用する
    fmt.Println(a-(k-a-b))
  }
}
