public class tp3_1{
	
	public static int samoussa( int i,int j ) {
		int a;
		if (i==1||j==1){
				a=1;
			 return a;
			 
		}
		else{
			a=samoussa(i,j-1)+samoussa(i-1,j);
			return a;
					
		}
					
	}
	public static int[][] bento(int i) {
		int tab[][]	= new int[i][i];
		int k=0, l=0;
		for( k=0; k<i; k++){
			for(l=0	; l<i-k; l++){
				
				if(k==0||l==0) tab[k][l]=1;
				
				else tab[k][l]=tab[k][l-1]+tab[k-1][l];
			}		
				
		}
		return tab;
	}
	
	public static void affichage( int[][] tab) {
		int i,j;
		for(i=0; i<tab[0].length; i++ ) {
			for(j=0; j<tab.length-i; j++) {
					System.out.print(" "+tab[i][j]);
			}
			System.out.println();
			System.out.println();
		
		}	
	}
	
	public static void main(String arg[]){
		/*int taille=8;
			int compteur=taille;
			for(int k=1;k<taille;k++){
				for(int l=1;l<compteur;l++){
					int a=samoussa(k,l);
					System.out.print(" "+a);

				}
				compteur-=1;
				System.out.println();
			}*/
			
			int r[][]=new int[8][8];			
			r=bento(8);
			affichage(r);
	}
	
	
	
}