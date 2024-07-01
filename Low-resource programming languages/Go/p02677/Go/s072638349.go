package main

import (
  "fmt"
  "os"
  "bufio"
  "log"
  "strconv"
  "math"
)


func solveFromFile() float64{
    var nu int
    scanner := bufio.NewScanner(os.Stdin)
    file, err := os.Open(os.Args[1])
    if err != nil {
      log.Fatalf("failed opening file: %s", err)
    }
    scanner = bufio.NewScanner(file)
    scanner.Scan()

	  n, err2 := strconv.Atoi(scanner.Text())
    nu = n
    if err2 != nil {
      log.Fatalf("failed opening file: %s", err2)
      
    }

    defer file.Close()
    nu++
    return solution(1,2,3,4)
}

//========== Implement Algorithm =======================
func solution(b float64,c float64, h float64, m float64) float64{

  minfloat := float64((m/60))
  hfloat :=  float64(h*360/12)
  minfloat = float64(minfloat*360/12)
  
  if hfloat==0{
      hfloat = 360
  }
  if minfloat == 0{
      minfloat = 360
  }
  retVal := math.Sqrt(math.Pow(float64(b),2)+math.Pow(float64(c),2)-2*b*c*math.Cos((math.Pi/180)*float64(math.Abs(hfloat-minfloat))))
  //b2 + c2 − 2bc cosA
  return retVal
}

func main() {

//================== Variables used ====================
  var a,b,h,m float64
  var ret float64
//======================================================

  if len(os.Args) >=2{
//============== Get return value from File ============
    ret = solveFromFile()


  }else{
//============== Get return value from STDIN ===========
    size,_ := fmt.Fscan(os.Stdin, &a,&b,&h,&m)
    size++

    //fmt.Scan(&num)
    ret = solution(a,b,h,m)
  }

//================== OUTPUT ============================
  fmt.Println(ret)
}
