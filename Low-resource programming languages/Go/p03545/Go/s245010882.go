package main

import(
  "fmt"
)

func main() {
  var n string
  fmt.Scan(&n)

  for bits := 0; bits < (1 << uint64(3)); bits++ {
    sum := int(n[0] - '0')
    op := make([]string, 3)
    for i := 0; i < 3; i++ {
      if (bits >> uint64(i) & 1) == 1 {
        op[i] = "+"
        sum += int(n[i+1] - '0')
      } else {
        op[i] = "-"
        sum -= int(n[i+1] - '0')
      }
    }
    if sum == 7 {
      // initial term
      expr := string(n[0])
      for j := 0; j < len(op); j++ {
        expr += op[j] + string(n[j+1])
      }
      // end term
      expr += "=7"
      fmt.Println(expr)
      return
    }
  }
}
