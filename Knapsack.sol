pragma solidity ^0.4.0;

contract Knapsack {

	function knapsack (int W , int [] wt, int [] val , unit n) public view returns(int){
		if( n == 0 || W == 0)
			return 0;
		if( wt[n-1] > W )
			return knapsack(W,wt,val,n-1);

		else return max(val[n-1]+knapsack(W-wt[n-1],wt,val,n-1),knapsack(W,wt,val,n-1));
	}

	function max(int x , int y ) private returns (int){
		if(y>x)
			return y;
		else return x;
	}

}