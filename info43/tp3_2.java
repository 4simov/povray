class tp3_2{
		
	public static void courgettes(String s,int n, int k) {
		if (k==0) System.out.println(""+s);
		else if (k==1)System.out.println( s+""+n);
		else{
				for(int i=0;i<=n;i++)
					courgettes(s+i,n-i,k-1);
		}
	}
	
	/*
	public static int courgettes(int s,int n, int k) {
		if (k==0) return 0;
		else if (k==1) return n;
		else{
				for(int i=0;i<=n;i++)
					return s+=courgettes(i,n-i,k-1);
		}
		return 0;
	}
	*/
	public static void affichage() {
		
		
	
	}
	
	public static void main(String arg[]){
		String s="";
		courgettes(s,3,3);
		//System.out.println(" "+s);
		
	}
}
