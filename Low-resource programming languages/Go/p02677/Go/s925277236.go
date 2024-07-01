package main

import (
  "fmt"
  "math"
)

func main() {
  var a,b,h,m float64
  var angle, ans float64
  fmt.Scanf("%f %f %f %f", &a, &b, &h, &m)

  angle = calcAngle(h, m)
  ans = calcAns(float64(a), float64(b), angle)
  fmt.Println(ans)

  // fmt.Println(math.Sqrt(a*a + b*b - 2*a*b*math.Cos(diff(360*(h/12)+30*(m/60), 360*(m/60))*math.Pi/180)))
}

func diff(a, b float64) float64 {
	if a > b {
		return a - b
	}
	return b - a
}

func calcAngle(h, m float64) (ans float64) {
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
