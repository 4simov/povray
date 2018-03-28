public class tp4_1{

	public static int curly(int n, int k){
		if (k==1||k==n){
				return 1;
		}
		
		else{
			return curly(n-1,k-1)+k*curly(n-1,k);
			
		}
	
	}
	
	public static double emmental(double x, int n){
		int rec = 1;
		double d = x;
		if(n == 0) {
			return 1;
		}
		
		else if(n%2 == 0) {
			rec= 0;
			d = 1;
		}
		return (d)*emmental(x, (n-rec)/2)*emmental(x, (n-rec)/2);
	}
	
	public static double emmental_prof(double x, int n){
		double e=emmental(x, n/2)*emmental(x, n/2);
		if(n == 0) {
			return 1;
		}
		
		else if(n%2 == 0) {
			return e;
		}
		return x*e;
	}


	public static int[] curlyfromage(int n){
		int init[]=new int[2];
		
		 init[0]=1; 
		 init[1]=0; 
			 
		 int tab[][]=new int[2][2];
		 tab[0][0]=1;
		 tab[1][0]=1;
		 tab[0][1]=1;
		 tab[1][1]=0;
		 
		 int res[]=new int[2];
		 
		if (n==1){
			
			 return init;
		}
		
		else {
			tab=produit(tab,n-1);
			res[0]=init[0]*tab[0][0]+init[1]*tab[1][0];
			res[1]=init[0]*tab[0][1]+init[1]*tab[1][1];
			return res;
		}
		
	}
	public static int[][] produit(int[][] tab1, int[] tab2){
			int tab[][]=new int[2][2];
					tab[0][0]=tab1[0][0]*tab2[0][0]+tab1[0][1]*tab2[1][0];
					tab[0][1]=tab1[0][1]*tab2[0][0]+tab1[1][1]*tab2[1][0];
					tab[1][0]=tab1[0][0]*tab2[0][1]+tab1[0][1]*tab2[1][1];
					tab[1][1]=tab1[1][0]*tab2[0][1]+tab1[1][1]*tab2[1][1];
					
			
			return tab;
	}
	
	
	public static void main(String args[]){
		
		int tab[]= new int[2];
		
		tab=curlyfromage(4);
		
		System.out.println(tab[0]);
		
		
	}

}
