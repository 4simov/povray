public class tp1_2{
	
	public static int[] poivron(int n, int k){
		int tab[][]=new int[n][n];
		if (n==1||k==1){
			for (int i=0;i<n;i++)
				tab[i][i]=1;
		}
		else{
			poivron(n,k-1)+poivron(n-1,k);
		}
			
	}

	
	public static void main(String arg[]){
		
		int tab[]=poivron(5,3);
			
	}
}

