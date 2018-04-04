public class tpBaril{
	
	static String[] tab;
	static String a,b;//pour la division
	final static int n=4;
	static int longueur;	//taille tableau
	static int compteur;
	static int i;
	
	public tpBaril(){
			longueur=(int)Math.pow(2,n);
			tab=new String[longueur];
			a="";
			b="";
			i=0;
			compteur=1;
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
				if(tab[j] !="2") {
					
				for( i=0; i<(n-1); i++){
					decoupe( tab[j], i);
					System.out.println(""+a+" "+b);
					for (int k=j+1;k<tab.length;k++){
						if( tab[k].equals( b+a)){
							tab[k] = "2";				
						}
						
											
						
					}
				}
				compteur++;
			}
		}
	}
	
public static void periodique(){

			
		if(n%2==1){	//si i n'est pas un diviseur de n		
			Tri();
		}
		else{
		
			for(int i=1;i<=n;i++){
				if(n%i==0){	//si i est un diviseur de n		
					if(multidecoupe(tab[i], i) ){
						tab[i] = "2";					
					}
				}
			}
			
		}
	
}
	
	public static void affiche(){
		for(int i=0;i<longueur;i++){
			if(tab[i].equals("2")){
				System.out.print("");		
			}
			else {
				System.out.print(" "+tab[i]);		
			}
		}	
		System.out.println("\n compteur : "+compteur);		
	}
	
	
	
	public static void main(String arg[]){
	//	System.exit(0);

		tpBaril t=new tpBaril();
		GenBean("",n);
		//Tri();
		periodique();
		affiche();
			
	}
}