package main

import "fmt"

func main() {
  var n, k int
  fmt.Scan(&n, &k)
  var s string
  fmt.Scan(&s)

  var list []int
  now, count := 1, 0
  for _, v := range s {
    if v == rune('0'+now) {
      count++
    } else {
      list = append(list, count)
      now = 1 - now
      count = 1
    }
  }
  if count != 0 {
    list = append(list, count)
  }
  if len(list)%2 == 0 {
    list = append(list, 0)
  }

  listRange := 2*k + 1
  sum := make([]int, len(list)+1)
  for i := 0; i < len(list); i++ {
    sum[i+1] = sum[i] + list[i]
  }

  var left, right, tmp, ans int
  for i := 0; i < len(list); i += 2 {
    left = i
    right = getMin(i+listRange, len(list))
    tmp = sum[right] - sum[left]
    ans = getMax(tmp, ans)
  }
  fmt.Println(ans)
}

func getMin(a int, b int) int {
  if a > b {
    return b
  }
  return a
}

func getMax(a int, b int) int {
  if getMin(a, b) == a {
    return b
  }
  return a
}
