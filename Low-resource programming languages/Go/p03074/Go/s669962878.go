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
  var left, right, tmp, ans int
  for i := 0; i < len(list); i += 2 {
    leftEdge := i
    rightEdge := getMin(i+listRange, len(list))

    for left < leftEdge {
      tmp -= list[left]
      left++
    }
    for right < rightEdge {
      tmp += list[right]
      right++
    }
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