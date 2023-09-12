#!/bin/bash                                                                                                                                   

#SBATCH --job-name=augustus                                                                                                                     
#SBATCH -p long                                                                                                                             
#SBATCH -N 1                                                                                                                                  
#SBATCH -n 1    #Tasks paralelos, recomendado para MPI, Default=1                                                                             
#SBATCH --cpus-per-task=8       #Cores requeridos por task, recomendado para multi-thread, Default=1                                          
#SBATCH --time=120:00:00                                                                                                                      
#SBATCH --mem=100g                                                                                                                             
#SBATCH --mail-user=en.duarte1086@uniandes.edu.co                                                                                                 
#SBATCH --mail-type=ALL                                                                                                                       
#SBATCH -o augus.o%j    

INPUT="/hpcfs/home/ciencias_biologicas/en.duarte1086/ENSAMBLAJE/ZANFONA/E.novo"

module load singularity/3.7.1
cd /hpcfs/apps/contenedores
singularity exec augustus.sif augustus --strand=both --singlestrand=true --genemodel=partial --UTR=off --species=tomato $INPUT/EnsamblajeEstrella
echo "listopapi" 



