package main

import (
  "fmt"
  "math"
)

func main() {
  // var a,b,h,m float64
  var a,b,h,m int
  var angle, ans float64
  // fmt.Scanf("%f %f %f %f", &a, &b, &h, &m)
  fmt.Scanf("%d %d %d %d", &a, &b, &h, &m)

  angle = calcAngle(h, m)
  ans = calcAns(float64(a), float64(b), angle)
  fmt.Println(ans)
}

func calcAngle(h, m int) (ans float64) {
  hAngle := h * 30 + 30 * m / 60
  mAngle := m * 6
  // hAngle := 360*(h/12)+30*(m/60)
  // mAngle := 360*(m/60)
  if hAngle > mAngle {
    ans = float64(hAngle - mAngle)
  } else {
    ans = float64(mAngle - hAngle)
  }
  return ans
}

func calcAns(a float64, b float64, angle float64) (ans float64) {
  cos := math.Cos(angle*math.Pi/180)
  ans = math.Sqrt(a*a+b*b-2*a*b*cos)
  return ans
}
