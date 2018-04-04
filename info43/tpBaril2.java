

public class tpBaril2{
	static int indice = 0;
	static int taille=50;
	static String tab[] = new String[taille];
	static String s ="";
	
	static int n=4;
	
	public static void GenMoby(String s, int n,int r, int c){
		if (r==n+1){
			tab[indice]=s;
			indice++;
		}
		else{
			
			for(int i = (int)Math.max((double)r,(double)c); i<=n;i++ ){
				GenMoby( s+i, n,r+1, i);
						
			}		
		}
		
	}
	
	public static void Affiche( int i){
			if(tab[i] != ""){
				for(int j=0;j<n;j++){
					if(j==0){
						int trans=Integer.parseInt(tab[i])/(int)(Math.pow(10,n-1));
						for (int k=0;k<trans;k++){
							System.out.print("(");						
						}					
						System.out.print(")");
					}
					else if(tab[i].charAt(j)==tab[i].charAt(j-1)){
						System.out.print(")");					
					}	
					else{
						for (int k=0;k<tab[i].charAt(j)-tab[i].charAt(j-1);k++){
							System.out.print("(");						
						}					
						System.out.print(")");				
					}			
				} System.out.println("");
							
			}		
		}

	public static void main( String args[]) {
		
		GenMoby(s,n,1,0);
		System.out.println(tab[0]);
		Affiche( 4 );
		
	}
}