package main

import(
	"fmt"
)

type point struct {
	closestWall  [4]int
}

const MAX=2000

func main(){
	var(
		h,w int
		grid [MAX+2][MAX+2]int
	)
	fmt.Scanln(&h,&w)
	for i,s:=0,"";i<h;i++{
		fmt.Scanln(&s)
		for j:=0;j<w;j++{
			if s[j]=='#'{
				grid[i+1][j+1]=-1
			}
		}
	}
	for i:=0;i<h+2;i++{
		grid[i][0]=-1
		grid[i][w+1]=-1
	}
	for j:=0;j<w+2;j++{
		grid[0][j]=-1
		grid[h+1][j]=-1			
	}


	for i:=1;i<h+1;i++{
		//left
		for j,cur:=1,1;j<w+1;j++{
			if grid[i][j]!=-1{
				grid[i][j]+=j-cur
			} else {
				cur=j+1
			}
		}
		//right
		for j,cur:=w,w;j>0;j--{
			if grid[i][j]!=-1{
				grid[i][j]+=cur-j
			} else {
				cur=j-1
			}
		}
	}

	
	for j:=1;j<w+1;j++{
		//up
		for i,cur:=1,1;i<h+1;i++{
			if grid[i][j]!=-1{
				grid[i][j]+=i-cur
			} else {
				cur=i+1
			}
		}
		//down
		for i,cur:=h,h;i>0;i--{
			if grid[i][j]!=-1{
				grid[i][j]+=cur-i
			} else {
				cur=i-1
			}
		}		
	}

	max:=0
	for i:=1;i<h+1;i++{
		for j:=1;j<w+1;j++{
			if max<grid[i][j]{
				max=grid[i][j]
			}
		}
	}

	fmt.Println(max+1)
}