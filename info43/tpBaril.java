public class tpBaril{
	
	static String[] tab;
	static String a,b;//pour la division
	final static int n=5;
	static int longueur;	//taille tableau
	static int i;
	
	public tpBaril(){
			longueur=(int)Math.pow(2,n);
			tab=new String[longueur];
			a="";
			b="";
			i=0;
	}
	
	//sqce binaire
	public static void GenBean(String s,int p){
		boolean b;
			if (p==0){ 
				tab[i]=s;
				i++;
				s="";
			}
			
			else {
				GenBean(s+"0",p-1);
				GenBean(s+"1",p-1);
			}
	}
	public static void decoupe(String s, int indice) {
			a = s.substring(0, indice+1);
			b = s.substring(indice+1);
	}
	public static void Tri() {
			int i,j;
			for(j=1; j<longueur; j++){
			for( i=0; i<(n-1); i++){
				if(tab[j] !="2") {
					decoupe( tab[j], i);
					System.out.println(""+a+" "+b);
					if( tab[i].equals( b+a)){
						tab[i] = "2";				
					}
				}
			}
		}
	}
	
	public static void affiche(){
		for(int i=0;i<longueur;i++){
			
			System.out.print(" "+tab[i]);		
		}	
		System.out.println("");		
	}
	
	public static void main(String arg[]){
	//	System.exit(0);

		tpBaril t=new tpBaril();
		GenBean("",n);
		Tri();
		affiche();
			
	}
}