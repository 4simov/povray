public class tp1_1{
	
	public static int cassoulet(int n){
		if (n==0) return 0;
		else if (n==1) return 1;
		else return 5*cassoulet(n-1)-6*cassoulet(n-2);
	}

	public static int carotte( int n ) {
		if( n==0 ) return 0;
		else if ( n== 1) return 1;
		else return carotte(n-1) - carotte(n-2);	
	}
	
		public static int cuisseDeGrenouille( int n ) {
		if( n==0 ) return 100;
		else return cuisseDeGrenouille(n-1)*4-100;	
	}
	
	public static double financier( int n ) {
		if( n==0 ) return 1000.0;
		else if ( n== 1) return 1.05*financier(n-1);
		else return 500.0+1.05*financier(n-1);	
	}
	
	public static int ravioli( int n ) {
		if( n==0 ) return 0;
		else if ( n== 1) return 1;
		else return ravioli(n-1) + ravioli(n-2);	
	}
	
	public static void main(String arg[]){
		//int a=0;
		//a=cassoulet(3);
		for (int i=0;i<=20;i++){
			System.out.print("a("+i+")= "+ravioli(i));
			//double b=(Math.pow((1+Math.sqrt(5))/2,i) - Math.pow((1-Math.sqrt(5))/2 ,i))/Math.sqrt(5);
			double x=0.4472135954*Math.pow(1.618033988,i);
			long r=Math.round(x);			
			System.out.println("      b= "+r);
		}
	}
	
}