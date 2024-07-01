package main

func main() {
	var s int
    var w int
	fmt.Scan(&s,&w)
  
  if s<w {
    fmt.Println("safe")
  }else{
    fmt.Println("unsafe")
  }

}
