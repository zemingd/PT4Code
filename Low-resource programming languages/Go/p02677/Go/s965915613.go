package main

import (
  "fmt"
  "math"
)

func main() {
  var a,b,h,m,angle int
  var ans float64
  fmt.Scanf("%d %d %d %d", &a, &b, &h, &m)

  // hの値で分岐
  switch h {
    case 0:
      // hとmが同じ位置の場合
      if m == 0 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 30 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 1:
      // hとmが同じ位置の場合
      if m == 5 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 35 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 2:
      // hとmが同じ位置の場合
      if m == 10 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 40 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 3:
      // hとmが同じ位置の場合
      if m == 15 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 45 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 4:
      // hとmが同じ位置の場合
      if m == 20 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 50 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 5:
      // hとmが同じ位置の場合
      if m == 25 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 55 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 6:
      // hとmが同じ位置の場合
      if m == 30 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 0 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 7:
      // hとmが同じ位置の場合
      if m == 35 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 5 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 8:
      // hとmが同じ位置の場合
      if m == 40 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 10 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break


    case 9:
      // hとmが同じ位置の場合
      if m == 45 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 15 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 10:
      // hとmが同じ位置の場合
      if m == 50 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 20 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break

    case 11:
      // hとmが同じ位置の場合
      if m == 55 {
        ans = math.Abs(float64(a + b))
        break
      }

      // hとmが180度離れている場合
      if m == 25 {
        ans = float64(a + b)
        break
      }
      // 角度を求める
      angle = calcAngle(h,m)
      ans = calcAns(a, b, angle)
      break
    }
  fmt.Println(ans)

}

func calcAngle(h, m int) (ans int) {
  hAngle := h * 30 + 30 * m / 60
  mAngle := m * 6
  div := int(math.Abs(float64(hAngle - mAngle)))
  if div > 180 {
    ans = 360 - div
  } else {
    ans = div
  }
  fmt.Println(ans)
  return ans
}

func calcAns(a, b, angle int) (ans float64) {
  cos := math.Cos(float64(angle) * math.Pi / 180.0)
  ans = math.Sqrt(float64(a*a+b*b)-2*float64(a*b)*cos)
  return ans
}
