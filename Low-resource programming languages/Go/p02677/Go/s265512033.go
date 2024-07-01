package main

import (
    "fmt"
    "math"
)

func square(x float64) float64 {
    return x * x
}

func main () {
  var a,b,h,m int
  fmt.Scan(&a, &b, &h, &m)

  var m_theta, h_theta float64

  //fmt.Print(a, b, h ,m)
  
  m_theta = math.Pi * float64(m) / 30.0
  h_theta = math.Pi * (float64(h) / 6.0 + float64(m) / 360.0)
  
  dist := math.Sqrt(square(float64(a) * math.Sin(h_theta) - float64(b) * math.Sin(m_theta)) + square(float64(a) * math.Cos(h_theta) - float64(b) * math.Cos(m_theta)))
  fmt.Print(dist)
}