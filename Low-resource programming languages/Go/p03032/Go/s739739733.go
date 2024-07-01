package main
 
import (
  "fmt"
  "sort"
)

func main() {
  var n,k int
  fmt.Scan(&n,&k)
  
  v := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&v[i])
  }
  
  ans := 0
  for i := 0; i <= k; i++ {
    for j := 0; j <= k-i; j++ {
      
      if i+j > n {
        continue
      }
      hand := []int{}

      //左からi個追加
      for x := 0; x < i; x++ {
      hand = append(hand,v[x])
      }
      
      //右からj個追加
      for y := n-1; y >= n-j; y-- {
      hand = append(hand,v[y])
      }
      //余っている試行回数(k-i-j)の分だけ捨てるかどうかを判定
      sort.Ints(hand)
      
      for l := 0; l < k-i-j; l++ {
		if len(hand) == 0 {
          break
        }
        if hand[0] < 0 {
		  hand = hand[1:]
		} else {
          break
        }
      }

      sum := 0
      for i := 0; i < len(hand); i++ {
        sum += hand[i]
      }
      if sum > ans {
          ans = sum
      }
    }
  }
  fmt.Println(ans)
}
 