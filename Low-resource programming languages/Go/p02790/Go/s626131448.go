    package main
     
    import ("fmt")
     
    func main(){
    	var a, b int
     
    	fmt.Scan(&a, &b)
     
    	if a < b{
    		for i := 0 ; i < b ; i++{
    			fmt.Print(a)
    		}
    	}else {
    		for i := 0 ; i < a ; i++{
    			fmt.Print(b)
    		}
    	}
    	fmt.Println()
     
    }