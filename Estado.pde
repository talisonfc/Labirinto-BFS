public class Estado{
   int x,y;
   public Estado pai;
   
   public Estado(){
      this.x = 0;
      this.y = 0;
   }
   
   public Estado(int x, int y){
      this.x = x;
      this.y = y;
   }
   
   public void setX(int x){
      this.x = x; 
   }
   
   public void setY(int y){
      this.y = y; 
   }
   
   public int getX(){
     return x;
   }
   
   public int getY(){
     return y;
   }
   
   public boolean estadoInvalido(int n, int m){
      if(x<0 || y<0 || x>(n-1) || y>(m-1))
        return true;
      return false;
   }
   //Usar enum
   public boolean estadoValido(int[][] labirinto){
     if(labirinto[x][y]==1 || labirinto[x][y]==-1)
        return false;
     return true;
   }
   
}