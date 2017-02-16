public class Labirinto{
  
  int R;
  
  /*
  Metodo para criar um labirinto
  */
  public void drawLabirinto(int n, int m, int w, int h){
    for(int i=0; i<n ; i++){
       for(int j=0; j<m; j++){
          rect(i*w,j*h,w,h);
          stroke(0,0,0); 
       }
    }
    this.R = (int)w/4;
  }
  
  /*
  Metodo para criar um labirinto com uma margem
  */
  public void drawLabirinto(int n, int m, int w, int h, int d){
    for(int i=0; i<n ; i++){
       for(int j=0; j<m; j++){
          rect(i*w+d,j*h+d,w,h);
          stroke(0,0,0); 
       }
    }
    this.R = (int)w/4;
  }
  
  /*
  Metodo para criar um labirinto com margem e passando um mapa
  */
  public void drawLabirinto(int n, int m, int w, int h, int d, int matrix[][]){
    for(int i=0; i<n ; i++){
       for(int j=0; j<m; j++){
          if(matrix[i][j]==1)
            fill(0,0,0);
          else
            fill(255,255,255);
          rect(i*w+d,j*h+d,w,h);
          stroke(0,0,0); 
       }
    }
    this.R = (int)w/4;
  }
  
  public void inicio(int w, int h, int d,Estado EI){
    fill(0,0,255); 
    ellipse(EI.getX()*w+d+w/2,EI.getY()*h+d+h/2,2*R,2*R);
  }
  
  public void fim(int w, int h, int d,Estado EF){
    fill(0,255,0); 
    ellipse(EF.getX()*w+d+w/2,EF.getY()*h+d+h/2,2*R,2*R);
  }
  
}