package main
import (
  "fmt"
  "bufio"
  "os"
  "strconv"
  "math"
)
 
func main(){
  var n,h,m_i int
  var t,a,s,m_s float64
  m_s = 99999
  fmt.Scanf("%d",&n)
  fmt.Scanf("%f%f",&t,&a)

  var sc = bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  for i:=0;i<n;i++ {
    sc.Scan()
    h,_ = strconv.Atoi(sc.Text())
    s =  t - float64 (h) * 0.006
    s = math.Abs(a - s)
    if m_s > s{
      m_i = i
      m_s = s
    }
  }
    fmt.Println(m_i+1)
}

