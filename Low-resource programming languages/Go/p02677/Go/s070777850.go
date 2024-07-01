package main

import "fmt"
import "math"

func main() {
  var A, B, H, M int
  fmt.Scanf("%d %d %d %d", &A, &B, &H, &M)
  
  angleA, angleB := 0., 0.
  angleA = float64(H) * 2. * math.Pi / 12. + float64(M) * 2. * math.Pi / (12.0*60.0)
  angleB = float64(M) * 2. * math.Pi / 60.
  angle := math.Abs(angleA - angleB)
  fmt.Println(math.Sqrt(float64(A*A) + float64(B*B) - 2. * float64(A * B) * math.Cos(angle)))
}//4.56425719433005567605