#!/bin/bash                                                                                                                                   

#SBATCH --job-name=buscoAra                                                                                                                     
#SBATCH -p short                                                                                                                             
#SBATCH -N 1                                                                                                                                  
#SBATCH -n 1    #Tasks paralelos, recomendado para MPI, Default=1                                                                             
#SBATCH --cpus-per-task=1       #Cores requeridos por task, recomendado para multi-thread, Default=1                                          
#SBATCH --time=1-00:00:00                                                                                                                      
#SBATCH --mem=50g                                                                                                                             
#SBATCH --mail-user=en.duarte1086@uniandes.edu.co                                                                                                 
#SBATCH --mail-type=ALL                                                                                                                       
#SBATCH -o buscoZanfona.o%j    



module load busco/5.3.2
busco -i /hpcfs/home/ciencias_biologicas/en.duarte1086/ENSAMBLAJE/BUSCO/Arabidopsis/GCF_000001735.4_TAIR10.1_genomic.fna  -l brassicales_odb10 -o Arabidopsis_Busco -m genome

echo "listopapi"
