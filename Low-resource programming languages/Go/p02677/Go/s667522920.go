package main

import (
  "fmt"
  "math"
)

func main() {
  var a,b,h,m int
  var angle, ans float64
  fmt.Scanf("%d %d %d %d", &a, &b, &h, &m)

  // hの値で分岐
  angle = calcAngle(h, m)
  ans = calcAns(a, b, angle)
  fmt.Println(ans)

}

func calcAngle(h, m int) (ans float64) {
  hAngle := h * 30 + 30 * m / 60
  mAngle := m * 6
  div := int(math.Abs(float64(hAngle - mAngle)))
  if div > 180 {
    ans = float64(360 - div)
  } else {
    ans = float64(div)
  }
  return ans
}

func calcAns(a int, b int, angle float64) (ans float64) {
  cos := math.Cos(angle * math.Pi / 180)
  ans = math.Sqrt(float64(a*a+b*b)-2*float64(a*b)*cos)
  return ans
}
